# test_browser_history

**A Xojo Web 2.0 demo and reference implementation of browser Back / Forward button support.**

Compares four different techniques side-by-side so you can pick the one that fits your project, copy the relevant code, and avoid the dozen surprises Xojo Web 2.0 throws at you along the way.

Built and tested on Xojo 2026r1.

---

## Why this exists

Xojo Web 2.0 apps are single-page apps. Out of the box, clicking the browser's **Back** button doesn't navigate inside your app — it exits the app entirely. That's terrible UX, but the workarounds aren't obvious:

- The official [`WebSession.SaveState`](https://documentation.xojo.com/api/web/websession.html#websession-savestate) / [`HashtagChanged`](https://documentation.xojo.com/api/web/websession.html#websession-hashtagchanged) API exists but is barely documented.
- Most blog posts suggesting iframe / `pushState` / custom JS bridges don't actually work in Web 2.0 because of framework quirks (sealed events, shadowed JS globals, request-thread vs session-thread, reserved URL paths, etc.).
- The Xojo docs don't mention any of those quirks.

This project implements **four working approaches**, each in its own panel of the demo, so you can compare URLs, code complexity, and behavior — then lift the one you want into your own project.

---

## What it does

Run the project, pick one of the four methods from the main menu, then navigate Home → Products → About → Contact using the in-app buttons. Click the browser's **Back** and **Forward** buttons. The status label tells you whether the last navigation came from an in-app click or a real browser history event.

| Method | Mechanism | URL style | Requires WebSDK? | Lines of code | When to use |
|--------|-----------|-----------|------------------|---------------|-------------|
| **1** | [`Session.ExecuteJavaScript`](https://documentation.xojo.com/api/web/websession.html#websession-executejavascript) + hidden [`WebTextField`](https://documentation.xojo.com/api/user_interface/web/webtextfield.html) bridge | `#home` | No | ~30 | You need a quick fix and don't want any custom classes |
| **4** | Custom [`WebSDKUIControl`](https://documentation.xojo.com/api/web/web_sdk/websdkuicontrol.html) wrapping `history.pushState` | `#home` | Yes | ~100 | You want a reusable, clean, drop-in component |
| **5** | [`App.HandleURL`](https://documentation.xojo.com/api/web/webapplication.html#webapplication-handleurl) GET endpoint + popstate `fetch()` | `#home` | No | ~80 | You already use `HandleURL` for other API endpoints |
| **7** | Native [`WebSession.SaveState`](https://documentation.xojo.com/api/web/websession.html#websession-savestate) + [`HashtagChanged`](https://documentation.xojo.com/api/web/websession.html#websession-hashtagchanged) event | `#home` | No | ~10 | **The recommended default for most apps** |

All four use hash-fragment URLs (`#home`, `#products`, …). Path-style URLs (`/home`) don't work in a live Xojo WebSocket session — the framework refuses them. This is one of the many things this demo exists to document.

---

## Quick start

```sh
git clone https://github.com/YOURNAME/test_browser_history.git
open test_browser_history/test_browser_history.xojo_project
```

Then in Xojo: **Run**. The app opens at `http://127.0.0.1:8080/`. Open the browser's DevTools (F12) if you want to watch what's happening.

---

## How to use each method in your project

### Method 7 — Native [`SaveState`](https://documentation.xojo.com/api/web/websession.html#websession-savestate) + [`HashtagChanged`](https://documentation.xojo.com/api/web/websession.html#websession-hashtagchanged) (recommended default)

The simplest, requires no JS at all. The browser URL gets `#home`, `#products`, etc.

**In your [`WebSession`](https://documentation.xojo.com/api/web/websession.html) subclass**, add this event handler:

```xojo
Sub HashtagChanged(name As String, data As String)
  // Fires on browser Back / Forward / manual hash edit.
  // Switch your virtual page based on `name`.
  Select Case name
  Case "home"
    WebPage1.MainPanel.SelectedPanelIndex = 0
  Case "products"
    WebPage1.MainPanel.SelectedPanelIndex = 1
  // ... etc
  End Select
End Sub
```

**In your nav button handlers** (or anywhere you want to push a history entry):

```xojo
Sub Pressed()
  // Push #products onto the browser history, then switch the panel.
  Session.SaveState("products", "", False)
  WebPage1.MainPanel.SelectedPanelIndex = 1
End Sub
```

**Critical rule**: NEVER call `SaveState` from inside `HashtagChanged` — that pushes a duplicate entry and breaks the Forward button. `SaveState` is only for in-app navigation; `HashtagChanged` only updates the UI.

That's it. Browser Back / Forward now work.

---

### Method 1 — [`Session.ExecuteJavaScript`](https://documentation.xojo.com/api/web/websession.html#websession-executejavascript) + hidden [`WebTextField`](https://documentation.xojo.com/api/user_interface/web/webtextfield.html) bridge

Use this if you want to demonstrate the History API explicitly, without adding a WebSDK control.

**In your [`WebPage`](https://documentation.xojo.com/api/user_interface/web/webpage.html)'s [`Opening`](https://documentation.xojo.com/api/user_interface/web/webpage.html#webpage-opening) event**, inject a popstate listener:

```xojo
Sub Opening()
  Var tfId As String = TextFieldBridge.ControlID  // a hidden WebTextField on the page
  Var js As String = "(function(){window.addEventListener('popstate',function(e){" + _
  "var p=window.location.hash||'';if(p.charAt(0)==='#')p=p.substring(1);if(p==='')p='home';" + _
  "var f=document.getElementById('" + tfId + "');if(!f)return;" + _
  "var input=f.querySelector('input')||f;" + _
  "input.value=p+'|'+Date.now();" + _    // timestamp so TextChanged always fires
  "input.dispatchEvent(new Event('change',{bubbles:true}));" + _
  "});})();"
  Session.ExecuteJavaScript(js)
End Sub
```

**In the `TextFieldBridge`'s [`TextChanged`](https://documentation.xojo.com/api/user_interface/web/webtextfield.html#webtextfield-textchanged) event**, react to the popstate:

```xojo
Sub TextChanged()
  Var raw As String = Me.Text
  Var thePath As String = raw
  Var pipe As Integer = raw.IndexOf("|")
  If pipe >= 0 Then thePath = raw.Left(pipe)
  // Switch your virtual page based on thePath
End Sub
```

**To push a history entry from a button click**:

```xojo
Sub Pressed()
  Var js As String = "setTimeout(function(){" + _
  "window.history.pushState({p:'products'},'Products','#products');" + _
  "document.title='Products';" + _
  "},0);"
  Session.ExecuteJavaScript(js)
End Sub
```

**Critical rules**:
- Use `window.history.pushState`, NOT bare `history.pushState`. Xojo's `tryToEval` runs your JS in a scope where `history` is shadowed by an internal framework symbol that has no `pushState`. The error is `TypeError: history.pushState is not a function`.
- Wrap the pushState in `setTimeout(fn, 0)`. Without it, the framework's same-batch URL management may undo the push before it commits.
- Use hash-style URLs (`#products`). Path-style (`/products`) won't activate the Back button in a Xojo WebSocket session.

---

### Method 4 — Custom [WebSDK control](https://documentation.xojo.com/api/web/web_sdk/websdkuicontrol.html) (`WebBrowserHistory`)

Use this if you want a reusable, drop-in component you can keep across projects. The cleanest architecture, but requires WebSDK boilerplate.

**Copy `WebBrowserHistory.xojo_code` into your project** and add it to your `.xojo_project` manifest.

**Drop a `WebBrowserHistory` control onto your WebPage** (invisible — it renders `display:none`).

**In your nav button handlers**:

```xojo
Sub Pressed()
  BrowserHistory1.PushState("products", "Products")  // pushes #products
  MainPanel.SelectedPanelIndex = 1
End Sub
```

**In the WebBrowserHistory control's `PopState` event**:

```xojo
Sub PopState(thePath As String)
  // Fires on browser Back / Forward.
  Select Case thePath
  Case "home"
    MainPanel.SelectedPanelIndex = 0
  Case "products"
    MainPanel.SelectedPanelIndex = 1
  End Select
End Sub
```

**In its `Ready` event** (fires once after the JS bridge initializes):

```xojo
Sub Ready()
  // Replace (not push) the initial entry so the first Back lands on
  // a known state instead of the previous origin.
  BrowserHistory1.ReplaceState("home", "Home")
End Sub
```

This method exposes `PushState(path, title)`, `ReplaceState(path, title)`, and raises `PopState(path)` and `Ready`. It uses the proper WebSDK `triggerServerEvent` channel — no DOM hacks.

---

### Method 5 — [`App.HandleURL`](https://documentation.xojo.com/api/web/webapplication.html#webapplication-handleurl) endpoint + popstate `fetch()`

Use this if you already have an `App.HandleURL` for other API endpoints and want the history bridge to fit that pattern.

**In your [`WebPage.Opening`](https://documentation.xojo.com/api/user_interface/web/webpage.html#webpage-opening)**, inject a popstate listener that GETs your endpoint:

```xojo
Sub Opening()
  Var sid As String = Session.Identifier
  Var ep As String = "/historyping"   // must NOT start with "_"
  Var js As String = "(function(){window.addEventListener('popstate',function(e){" + _
  "var p=window.location.hash||'';if(p.charAt(0)==='#')p=p.substring(1);if(p==='')p='home';" + _
  "var url='" + ep + "?sessionId='+encodeURIComponent('" + sid + "')+'&path='+encodeURIComponent(p);" + _
  "fetch(url,{method:'GET'});" + _
  "});})();"
  Session.ExecuteJavaScript(js)
End Sub
```

**In `App.HandleURL`**:

```xojo
Function HandleURL(request As WebRequest, response As WebResponse) As Boolean
  // Match both "/historyping" and "historyping" (Xojo's path stripping varies).
  If request.Path <> "/historyping" And request.Path <> "historyping" Then Return False

  Var sid As String = ExtractQueryParam(request.QueryString, "sessionId")
  Var thePath As String = ExtractQueryParam(request.QueryString, "path")

  Var ws As WebSession = Self.SessionWithIdentifier(sid)
  If ws Is Nil Then
    response.Status = 404
    Return True
  End If

  // We're on a request thread, NOT the session's event thread.
  // Just store the work; a page-owned WebTimer will dispatch it.
  If ws IsA Session Then Session(ws).PendingHistoryPath = thePath

  response.Status = 200
  Return True
End Function
```

**On your WebPage**, drop a [`WebTimer`](https://documentation.xojo.com/api/web/webtimer.html) with these layout properties:

```
Location  = 1     (Server-side)
RunMode   = 2     (Multiple — repeats)
Period    = 200   (ms)
Enabled   = True
```

In its [`Run`](https://documentation.xojo.com/api/web/webtimer.html#webtimer-run) event:

```xojo
Sub Run()
  Var thePath As String = Session.PendingHistoryPath
  If thePath = "" Then Return
  Session.PendingHistoryPath = ""
  // Switch your virtual page based on thePath
End Sub
```

**Critical rules**:
- **GET, not POST**. Xojo Web 2.0's framework rejects unexpected POSTs to `HandleURL` with **403** before your handler ever fires.
- **The endpoint path cannot start with `_`** (e.g. `/__history__` returns 403; the framework reserves underscore-prefixed paths).
- **Do NOT use [`WebTimer.CallLater`](https://documentation.xojo.com/api/web/webtimer.html#webtimer-calllater)`(ms, AddressOf delegate)` from inside `HandleURL`** — it silently does nothing because there's no session context to bind the delegate to. A page-owned `WebTimer` polling shared state is the working pattern.

---

## Hard-won gotchas (the lessons this demo encodes)

These all bit us during development. Each contradicts what you'd reasonably expect from Xojo docs or general HTML5 knowledge.

1. **[`WebHTMLViewer.TitleChanged`](https://documentation.xojo.com/api/user_interface/web/webhtmlviewer.html) is sealed** by the superclass — you can't override it. Don't try.
2. **[`WebHTMLViewer`](https://documentation.xojo.com/api/user_interface/web/webhtmlviewer.html) has no inbound JS → Xojo channel in Web 2.0** (no `JavaScriptRequest`, no `ExecuteJavaScriptSync` on the viewer). The Desktop iframe-bridge pattern does not work in Web.
3. **Path-style `pushState` (`/products`) does NOT activate the Back button** in a live Xojo WebSocket session. Always use hash-style.
4. **Bare `history.pushState` fails** inside [`Session.ExecuteJavaScript`](https://documentation.xojo.com/api/web/websession.html#websession-executejavascript) (`history` is shadowed by an internal symbol). Always `window.history.pushState`.
5. **Defer [`Session.ExecuteJavaScript`](https://documentation.xojo.com/api/web/websession.html#websession-executejavascript) pushState with `setTimeout(fn, 0)`** or the framework's URL management may undo it.
6. **[`App.HandleURL`](https://documentation.xojo.com/api/web/webapplication.html#webapplication-handleurl) paths starting with `_` return 403** (framework reserves them).
7. **Unexpected POSTs to `HandleURL` return 403.** Use GET.
8. **[`request.Path`](https://documentation.xojo.com/api/web/webrequest.html) may or may not include the leading slash.** Match both forms.
9. **[`WebTimer.CallLater`](https://documentation.xojo.com/api/web/webtimer.html#webtimer-calllater) from `HandleURL`'s request thread silently does nothing.** Use a page-owned WebTimer polling shared session state.
10. **[`WebTimer`](https://documentation.xojo.com/api/web/webtimer.html) layout properties:** `RunMode` (not `Mode`), `Location` (required — without it the layout fails to parse). 0=Browser, 1=Server.
11. **[`WebHTMLViewer`](https://documentation.xojo.com/api/user_interface/web/webhtmlviewer.html) with `Visible = False` may not initialize** — use size 1×1 visible instead.
12. **[`WebSession.SaveState`](https://documentation.xojo.com/api/web/websession.html#websession-savestate) works** — but never call it from inside [`HashtagChanged`](https://documentation.xojo.com/api/web/websession.html#websession-hashtagchanged) (re-pushes a duplicate, breaks Forward).

---

## File map

| File | Purpose |
|------|---------|
| `App.xojo_code` | [`WebApplication`](https://documentation.xojo.com/api/web/webapplication.html) subclass. Hosts [`HandleURL`](https://documentation.xojo.com/api/web/webapplication.html#webapplication-handleurl) for Method 5. |
| `Session.xojo_code` | [`WebSession`](https://documentation.xojo.com/api/web/websession.html) subclass. Implements [`HashtagChanged`](https://documentation.xojo.com/api/web/websession.html#websession-hashtagchanged) (Method 7) and stores pending paths (Method 5). |
| `WebPage1.xojo_code` | The single page. 5 top-level panels (menu + 4 demos). All button handlers and bridge controls. |
| `WebBrowserHistory.xojo_code` | Method 4's [`WebSDKUIControl`](https://documentation.xojo.com/api/web/web_sdk/websdkuicontrol.html). Drop-in reusable history component. |
| `BrowserHistoryUtils.xojo_code` | Shared module: `eMethod`, `eVirtualPage` enums; path/title constants; `kHistoryEndpoint`. |

---

## Requirements

- Xojo 2026r1 or later (Web 2.0)
- Tested on macOS; should work on Windows / Linux Xojo builds.

---

## License

MIT. Use any code from this demo in your own projects — that's the whole point. Attribution appreciated but not required.

---

## Contributing

Found another Web 2.0 quirk this demo doesn't cover? Open an issue or PR. The goal is for this repo to be the definitive answer to "how do I make browser Back work in a Xojo Web 2.0 app?"
