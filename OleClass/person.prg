DEFINE CLASS person as Custom OLEPUBLIC
	HIDDEN _cFirstName
	HIDDEN _cLastName
	cFirstName = ""
	cLastName = ""
	
	FUNCTION init
	this._cFirstName = ""
	this._cLastName	= ""
	endfunc
	
	HIDDEN PROCEDURE cFirstName_Access
		RETURN this._cFirstName
	ENDPROC 
	
	HIDDEN PROCEDURE cLastName_Access
		RETURN this._cLastName
	ENDPROC 

	HIDDEN PROCEDURE cFirstName_Assign(vNewVal)
		this._cFirstName = vNewVal
	ENDPROC 

	HIDDEN PROCEDURE cLastName_Assign(vNewVal)
		this._cLastName = vNewVal
	ENDPROC 
	
	FUNCTION GetFullName
		RETURN this._cFirstName + SPACE(1) + this._cLastName
	ENDFUNC 

ENDDEFINE