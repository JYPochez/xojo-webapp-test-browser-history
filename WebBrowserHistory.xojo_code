#tag Class
Protected Class WebBrowserHistory
Inherits WebSDKUIControl
	#tag Event
		Function ExecuteEvent(name As String, parameters As JSONItem) As Boolean
		  // Called by the framework when the JS side invokes triggerServerEvent.
		  Select Case name
		  Case "PopState"
		    // The JS sends the new path (without leading slash) when the user
		    // clicks the browser Back/Forward buttons.
		    Var thePath As String = ""
		    If parameters <> Nil And parameters.HasKey("path") Then
		      thePath = parameters.Value("path").StringValue
		    End If
		    RaiseEvent PopState(thePath)
		    Return True
		  Case "Ready"
		    // Sent by the JS once it has hooked the popstate listener. We use it to
		    // push the initial state so Back works for the very first navigation.
		    RaiseEvent Ready
		    Return True
		  End Select
		  Return False
		End Function
	#tag EndEvent

	#tag Event
		Function JavaScriptClassName() As String
		  Return "VNS.WebBrowserHistory"
		End Function
	#tag EndEvent

	#tag Event
		Function SessionJavascriptURLs(session As WebSession) As String()
		  #Pragma Unused session
		  // Serve the JS file once per session. JSFramework MUST be Shared so the
		  // same WebFile URL is reused across instances and sessions.
		  If JSFramework = Nil Then
		    JSFramework = New WebFile
		    JSFramework.Filename = "VNSWebBrowserHistory.js"
		    JSFramework.MIMEType = "text/javascript"
		    JSFramework.ForceDownload = False
		    JSFramework.Data = kJSCode
		    JSFramework.Session = Nil // Make it available to all sessions.
		  End If
		  Return Array(JSFramework.URL)
		End Function
	#tag EndEvent

	#tag Event
		Sub Serialize(js As JSONItem)
		  // Send any pending command to the JS side. The doCommand field is consumed
		  // and cleared on every serialize so subsequent updates do not re-fire it.
		  js.Value("doCommand") = ToUTF8(mDoCommand)
		  js.Value("commandData") = JSFriendlyString(mCommandData)
		  mDoCommand = ""
		  mCommandData = ""
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0, Description = 50757368657320612068697374207279207374617465206F6E20746865206272206F77736572207469646520282E2E2F2922290A
		Sub PushState(thePath As String, theTitle As String = "")
		  // Asks the browser to push a new entry into its history stack.
		  // The path will become visible in the address bar (relative to current URL).
		  Var payload As New JSONItem
		  payload.Value("path") = thePath
		  payload.Value("title") = theTitle
		  mDoCommand = "pushState"
		  mCommandData = payload.ToString
		  UpdateControl(True) // True = flush immediately
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526570206C61636573207468652063757272206E742068697374207279206E747279207769746820612065772070617468207769746E6F7574206164696E6E206E657720737461636B20656E7472792E0A
		Sub ReplaceState(thePath As String, theTitle As String = "")
		  Var payload As New JSONItem
		  payload.Value("path") = thePath
		  payload.Value("title") = theTitle
		  mDoCommand = "replaceState"
		  mCommandData = payload.ToString
		  UpdateControl(True)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 456E73757265732070726F70657220555446382065206E636F64696E6720666F7220777562207472616E736D69737369206F6E2E0A
		Private Function ToUTF8(originalString As String) As String
		  If originalString.Encoding = Nil Then
		    Return originalString.DefineEncoding(Encodings.UTF8)
		  End If
		  If originalString.Encoding = Encodings.UTF8 Then
		    Return originalString
		  End If
		  Return originalString.ConvertEncoding(Encodings.UTF8)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21, Description = 4573636170657320414E4420656E636F646573207374696E677320666F722053204F4E207472616E736D697473206E2E0A
		Private Function JSFriendlyString(theString As String) As String
		  // The framework interpolates our JSON into a single-quoted JS string,
		  // so unescaped apostrophes silently break the resulting JS.
		  Var res As String = theString
		  res = res.ReplaceAll("\", "\\")
		  res = res.ReplaceAll("'", "\'")
		  res = res.ReplaceAll("""", "\""")
		  Return ToUTF8(res)
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0, Description = 526169736564207768656E2074682075736572206C636F6E73207468652062726F77736572204261636B2F466F727761726420627574746F6E73282E0A
		Event PopState(thePath As String)
	#tag EndHook

	#tag Hook, Flags = &h0, Description = 5261697365207768656E2074686520622072617773207269646520636C6173732068617320686F6F6B65642074686520706F70737461746520657665747320726561647921742E0A
		Event Ready()
	#tag EndHook


	#tag Property, Flags = &h21, Description = 4E657874202D636F6D6D616E640A
		Private mDoCommand As String
	#tag EndProperty

	#tag Property, Flags = &h21, Description = 5061796C6F61642070756C7E2E0A
		Private mCommandData As String
	#tag EndProperty

	#tag Property, Flags = &h1, Description = 53686172656420576562466962652067656E657261746564206F6E63655F2E0A
		Shared JSFramework As WebFile
	#tag EndProperty


	#tag Constant, Name = kJSCode, Type = String, Dynamic = False, Default = \"var VNS\x3B\n(function (VNS) {\n  class WebBrowserHistory extends XojoWeb.XojoVisualControl {\n    constructor(id\x2C events) {\n      super(id\x2C events)\x3B\n      this._inited \x3D false\x3B\n    }\n    render() {\n      super.render()\x3B\n      let el \x3D this.DOMElement()\x3B\n      if (!el) return\x3B\n      this.setAttributes()\x3B\n      if (!this._inited) {\n        this._inited \x3D true\x3B\n        el.style.display \x3D \"none\"\x3B\n        var self \x3D this\x3B\n        window.addEventListener(\"popstate\"\x2C function (e) {\n          var p \x3D window.location.hash || \"\"\x3B\n          if (p.charAt(0) \x3D\x3D\x3D \"#\") p \x3D p.substring(1)\x3B\n          if (p \x3D\x3D\x3D \"\") p \x3D \"home\"\x3B\n          self.triggerServerEvent(\"PopState\"\x2C { path: p }\x2C true)\x3B\n        })\x3B\n        setTimeout(function () {\n          self.triggerServerEvent(\"Ready\"\x2C {}\x2C false)\x3B\n        }\x2C 50)\x3B\n      }\n      this.applyUserStyle()\x3B\n    }\n    updateControl(data) {\n      super.updateControl(data)\x3B\n      var js\x3B\n      try { js \x3D JSON.parse(data)\x3B } catch (ex) { return\x3B }\n      if (js.doCommand) this.executeCommand(js.doCommand\x2C js.commandData)\x3B\n    }\n    executeCommand(cmd\x2C raw) {\n      var data \x3D {}\x3B\n      try { data \x3D raw ? JSON.parse(raw) : {}\x3B } catch (ex) { data \x3D {}\x3B }\n      var path \x3D data.path || \"\"\x3B\n      var title \x3D data.title || \"\"\x3B\n      var url \x3D \"#\" + path\x3B\n      if (cmd \x3D\x3D\x3D \"pushState\") {\n        history.pushState({ p: path }\x2C title\x2C url)\x3B\n        if (title) document.title \x3D title\x3B\n      } else if (cmd \x3D\x3D\x3D \"replaceState\") {\n        history.replaceState({ p: path }\x2C title\x2C url)\x3B\n        if (title) document.title \x3D title\x3B\n      }\n    }\n  }\n  VNS.WebBrowserHistory \x3D WebBrowserHistory\x3B\n})(VNS || (VNS \x3D {}))\x3B\n"
	#tag EndConstant


End Class
#tag EndClass
