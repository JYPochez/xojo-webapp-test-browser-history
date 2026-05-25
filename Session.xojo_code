#tag Class
Protected Class Session
Inherits WebSession
	#tag Event
		Sub HashtagChanged(name As String, data As String)
		  #Pragma Unused data
		  If WebPage1 Is Nil Then Return
		  Var page As BrowserHistoryUtils.eVirtualPage = BrowserHistoryUtils.PageFromPath(name)
		  WebPage1.ApplyVirtualPage7FromHash(page)
		End Sub
	#tag EndEvent

	#tag Method, Flags = &h0, Description = 53746F726573207468652070617468207365742062792041707020486F6E646C6555524C20286D6574686F642035292E0A
		Sub DispatchHistoryPath(thePath As String)
		  // Just store the path. A polling WebTimer on WebPage1 (which runs on
		  // this session's event thread) will pick it up and dispatch it.
		  mPendingHistoryPath = thePath
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520706172656E64696E6720686973746F727920706174682061646E20636C656172732069742E0A
		Function ConsumePendingHistoryPath() As String
		  Var r As String = mPendingHistoryPath
		  mPendingHistoryPath = ""
		  Return r
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mPendingHistoryPath As String
	#tag EndProperty


	#tag Session
	  interruptmessage=We are having trouble communicating with the server. Please wait a moment while we attempt to reconnect.
	  disconnectmessage=You have been disconnected from this application.
	  confirmmessage=
	  AllowTabOrderWrap=True
	  ColorMode=0
	  SendEventsInBatches=True
	  LazyLoadDependencies=True
	#tag EndSession
End Class
#tag EndClass
