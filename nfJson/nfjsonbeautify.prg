*-------------------------------------------------------------------
* ver 1.??? - 11/09/2020
* - quick and easy way to make an existing JSON-String readable/formattet
*-------------------------------------------------------------------
LPARAMETERS cJson
RETURN nfJsonCreate(nfJsonRead(cJson),.T.)