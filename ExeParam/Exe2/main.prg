LPARAMETERS toObj as Object

IF TYPE("toObj") = "O"
	oJson = NEWOBJECT("JSONFox", "d:\dev\JSONFox\JSONFox.prg")
	lcJSON = oJson.encode(toObj)
	MESSAGEBOX(lcJSON)
	RELEASE oJson
ENDIF

