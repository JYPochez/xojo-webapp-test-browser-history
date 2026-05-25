#tag Module
Protected Module BrowserHistoryUtils
	#tag Method, Flags = &h0, Description = 436F6E7665727473206120657669727475616C50616765206E756D656520696E746F2069747320555246206C2070617468656D656E742028652E672E2022686F6D6522292E0A
		Function PathFromPage(thePage As eVirtualPage) As String
		  // Returns the URL path segment for a given virtual page.
		  Select Case thePage
		  Case eVirtualPage.Home
		    Return kHome
		  Case eVirtualPage.Products
		    Return kProducts
		  Case eVirtualPage.About
		    Return kAbout
		  Case eVirtualPage.Contact
		    Return kContact
		  End Select
		  Return kHome
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E7665727473206120555246205061746820696E746F206120657669727475616C506167652E0A
		Function PageFromPath(thePath As String) As eVirtualPage
		  // Returns the virtual page enum corresponding to a URL path segment.
		  Var p As String = thePath.Lowercase.Trim
		  // Strip any leading slash so callers may pass "/products" or "products".
		  If p.BeginsWith("/") Then
		    p = p.Middle(1)
		  End If
		  Select Case p
		  Case kProducts
		    Return eVirtualPage.Products
		  Case kAbout
		    Return eVirtualPage.About
		  Case kContact
		    Return eVirtualPage.Contact
		  Else
		    Return eVirtualPage.Home
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5475726E73206120657669727475616C50616765206E756D6520696E746F206120646973706C61792074692E0A
		Function PageTitle(thePage As eVirtualPage) As String
		  // Human-readable title for the virtual page.
		  Select Case thePage
		  Case eVirtualPage.Home
		    Return kTitleHome
		  Case eVirtualPage.Products
		    Return kTitleProducts
		  Case eVirtualPage.About
		    Return kTitleAbout
		  Case eVirtualPage.Contact
		    Return kTitleContact
		  End Select
		  Return kTitleHome
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 446973736374696F6E2074657874207368617772696E6720666F72207468652076697274757061206C20706167652E0A
		Function PageContent(thePage As eVirtualPage) As String
		  // Multi-line content shown in each virtual page so back/forward
		  // navigation is visually obvious.
		  Select Case thePage
		  Case eVirtualPage.Home
		    Return kContentHome
		  Case eVirtualPage.Products
		    Return kContentProducts
		  Case eVirtualPage.About
		    Return kContentAbout
		  Case eVirtualPage.Contact
		    Return kContentContact
		  End Select
		  Return kContentHome
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526574757273207468652064697370206C6179206E616D6520666F722074686520636F6E7472206F6C20656D7068616F642E0A
		Function MethodName(theMethod As eMethod) As String
		  Select Case theMethod
		  Case eMethod.Method1
		    Return kMethod1Name
		  Case eMethod.Method7
		    Return kMethod7Name
		  Case eMethod.Method4
		    Return kMethod4Name
		  Case eMethod.Method5
		    Return kMethod5Name
		  End Select
		  Return ""
		End Function
	#tag EndMethod


	#tag Constant, Name = kHome, Type = String, Dynamic = False, Default = \"home", Scope = Public, Description = 555246207061746820736567206D656E7420666F7220746865206C616E64696E672D70616765207669727475616C2076696577722E0A
	#tag EndConstant

	#tag Constant, Name = kProducts, Type = String, Dynamic = False, Default = \"products", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kAbout, Type = String, Dynamic = False, Default = \"about", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kContact, Type = String, Dynamic = False, Default = \"contact", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTitleHome, Type = String, Dynamic = False, Default = \"Home", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTitleProducts, Type = String, Dynamic = False, Default = \"Products", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTitleAbout, Type = String, Dynamic = False, Default = \"About", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTitleContact, Type = String, Dynamic = False, Default = \"Contact", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kMethod1Name, Type = String, Dynamic = False, Default = \"Method 1 \x96 Hidden WebTextField bridge", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kMethod7Name, Type = String, Dynamic = False, Default = \"Method 7 \x96 Native SaveState / HashtagChanged", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kMethod7Description, Type = String, Dynamic = False, Default = \"Built-in Xojo Web 2.0 mechanism using WebSession.SaveState + HashtagChanged. No JS\x2C no WebSDK. Hash-fragment URLs (#home\x2C #products).", Scope = Public, Description = 4275696C742D696E20586F6A6F2057656220322E30206D656368616E69736D207573696E672057656253657373696F6E2E536176655374617465202B20486173687461674368616E6765642E204E6F204A532C206E6F2057656253444B2E20486173682D667261676D656E742055524C73202823686F6D652C202370726F6475637473292E0A
	#tag EndConstant

	#tag Constant, Name = kMethod4Name, Type = String, Dynamic = False, Default = \"Method 4 \x96 Custom WebSDK control", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kMethod5Name, Type = String, Dynamic = False, Default = \"Method 5 \x96 HandleURL endpoint + popstate fetch", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kHistoryEndpoint, Type = String, Dynamic = False, Default = \"/historyping", Scope = Public, Description = 555246207061746820666F722074686520636F6E7475726520627920417070486172747469726C28290A
	#tag EndConstant

	#tag Constant, Name = kContentHome, Type = String, Dynamic = False, Default = \"HOME\nWelcome to the demo site.\nThis is the landing page \x96 the first virtual page you see on entering any of the four methods.\nTry the nav buttons above\x2C then watch the browser address bar update with #home / #products / #about / #contact.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kContentProducts, Type = String, Dynamic = False, Default = \"PRODUCTS\nOur catalog:\n  \x95 Widget Mk I \x96 the classic\n  \x95 Gadget Pro \x96 with extra features\n  \x95 Gizmo Mini \x96 portable edition\nClick Back in your browser \x96 you should return to whichever page you were viewing before.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kContentAbout, Type = String, Dynamic = False, Default = \"ABOUT\nFounded in 2026 in a small workshop.\nOur mission: prove that Xojo Web 2.0 can play nicely with browser history.\nThe four methods on the menu are four different ways to make Back / Forward actually work.\nMethod 7 (SaveState) is usually the right answer.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kContentContact, Type = String, Dynamic = False, Default = \"CONTACT\nEmail:   demo@example.com\nPhone:   +33 1 23 45 67 89\nAddress: 42 rue de la Démo\x2C 75000 Paris\nYou\x27re now on the last virtual page.\nTry: Home > Products > About > Contact then Back\x2C Back\x2C Back \x96 you should rewind through them in order.", Scope = Public
	#tag EndConstant


	#tag Enum, Name = eMethod, Type = Integer, Flags = &h0
		Method1
		  Method7
		  Method4
		Method5
	#tag EndEnum

	#tag Enum, Name = eVirtualPage, Type = Integer, Flags = &h0
		Home
		  Products
		  About
		Contact
	#tag EndEnum


End Module
#tag EndModule
