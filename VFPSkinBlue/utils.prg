Function Messageboxs
	Lparameters tcMessage As String, tnButtons As Integer, tcTitle As String

	If Empty(tnButtons)
		tnButtons = 0
	Endif
	If Empty(tcTitle)
		tcTitle = "Aviso"
	Endif

	Local oMsgBox As Object, lnResult As Integer
	oMsgBox = Createobject("_messagebox")
	oMsgBox.cMessage = tcMessage
	oMsgBox.nButtons = tnButtons
	oMsgBox.cTitle 	 = tcTitle
	oMsgBox.Show(1)
	lnResult = oMsgBox.nResult

	Do Case
	Case Inlist(tnButtons,0,16,32,48,64) 	&&OK
		Return 1
	Case Inlist(tnButtons,17,33,49,65) 		&&OK and Cancel Buttons
		If lnResult = 1
			Return 1
		Else &&lnResult = 1
			Return 2
		Endif &&lnResult = 1
	Case Inlist(tnButtons,18,34,50,66) 		&&Abort, Retry, Ignore
		Do Case
		Case lnResult = 1
			Return 3
		Case lnResult = 2
			Return 4
		Case lnResult = 3
			Return 5
		Otherwise
		Endcase
	Case Inlist(tnButtons,19,35,51,67) 		&&Yes, No and Cancel Buttons
		Do Case
		Case lnResult = 1
			Return 6
		Case lnResult = 2
			Return 7
		Case lnResult = 3
			Return 2
		Otherwise
		Endcase
	Case Inlist(tnButtons,20,36,52,68) 		&&Yes And  No Buttons
		Do Case
		Case lnResult = 1
			Return 6
		Case lnResult = 2
			Return 7
		Otherwise
		Endcase
	Case Inlist(tnButtons,21,37,53,69) 		&&Retry and Cancel Buttons
		Do Case
		Case lnResult = 1
			Return 4
		Case lnResult = 2
			Return 2
		Otherwise
		Endcase
	Otherwise
	Endcase
Endfunc
