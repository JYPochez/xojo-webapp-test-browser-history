#tag Class
Protected Class App
Inherits WebApplication
	#tag Event
		Function HandleURL(request As WebRequest, response As WebResponse) As Boolean
		  // Method 5 server side: the popstate JS GETs /historyping?sessionId=...&path=...
		  // GET (not POST) because Xojo Web 2.0's framework rejects unexpected
		  // POSTs with 403 before HandleURL fires.
		  // Match the endpoint loosely: request.Path may or may not include a
		  // leading slash depending on the Xojo framework version.
		  Var ep As String = BrowserHistoryUtils.kHistoryEndpoint
		  Var epNoSlash As String = If(ep.Left(1) = "/", ep.Middle(1), ep)
		  If request.Path <> ep And request.Path <> epNoSlash Then Return False

		  Var sid As String = ExtractQueryParam(request.QueryString, "sessionId")
		  Var thePath As String = ExtractQueryParam(request.QueryString, "path")

		  If sid.IsEmpty Then
		    response.Status = 400
		    response.Write(kRespMissingSession)
		    Return True
		  End If

		  Var ws As WebSession = Self.SessionWithIdentifier(sid)
		  If ws = Nil Then
		    response.Status = 404
		    response.Write(kRespSessionNotFound)
		    Return True
		  End If

		  // We are NOT on the session's event thread. Just store the pending path
		  // on the session; the page-owned WebTimer (TimerMethod5Dispatch, Location
		  // = Server) will pick it up on its own thread within ~200 ms.
		  If ws IsA Session Then Session(ws).DispatchHistoryPath(thePath)

		  response.Status = 200
		  response.MIMEType = "application/json"
		  response.Write(kRespOK)
		  Return True
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function ExtractQueryParam(qs As String, key As String) As String
		  // Manual query-string parse: returns the URL-decoded value of key, or "".
		  Var pairs() As String = qs.Split("&")
		  For Each pair As String In pairs
		    Var eq As Integer = pair.IndexOf("=")
		    If eq < 0 Then Continue
		    Var k As String = pair.Left(eq)
		    If k = key Then
		      Var v As String = pair.Middle(eq + 1)
		      Return DecodeURLComponent(v)
		    End If
		  Next
		  Return ""
		End Function
	#tag EndMethod


	#tag Constant, Name = kRespOK, Type = String, Dynamic = False, Default = \"{\"ok\":true}", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kRespBadBody, Type = String, Dynamic = False, Default = \"empty body", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kRespBadJSON, Type = String, Dynamic = False, Default = \"invalid json", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kRespMissingSession, Type = String, Dynamic = False, Default = \"missing sessionId", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kRespSessionNotFound, Type = String, Dynamic = False, Default = \"session not found", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kRespMethodNotAllowed, Type = String, Dynamic = False, Default = \"method not allowed", Scope = Private
	#tag EndConstant


End Class
#tag EndClass
