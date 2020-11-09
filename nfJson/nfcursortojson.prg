*-------------------------------------------------------------------
* Created by Marco Plaza @nfTools
* ver 1.000 - 20/02/2016
*
* ver 1.??? - 11/09/2020
* -added parameter to pass a cursor to use 
*-------------------------------------------------------------------
FUNCTION nfCursorToJSON
parameters returnArray,arrayofValues,includestruct,formattedOutput,cAlias

IF VARTYPE(cAlias) = "C"
	TRY 
		SELECT (cAlias)
	CATCH
		return .f.
	ENDTRY 
ENDIF 

LOCAL o
o = nfCursorToObject( m.arrayOfValues,m.includestruct )

IF m.returnArray
	DIMENSION rows(1)
	ACOPY(m.o.rows,'rows')
	Return nfJsonCreate(@m.rows,m.formattedOutput,.t.)
ELSE
	Return nfJsonCreate(m.o,m.formattedOutput,.t.)
ENDIF
