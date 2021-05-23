#INCLUDE "TOTVS.CH"

User Function PutGlbVars()
Local cRet	:= ''
Local nRet	:= 0
Local aRet	:= {}

PutGlbVars( 'UAVAR', "VAR UniversoADVPL", 2, {'UA'} )

GetGlbVars( 'UAVAR', @cRet, @nRet, @aRet )

MsgInfo( 'cRet: ' + cRet + CRLF + ;
'nRet: ' + cValtoChar(nRet) + CRLF + ;
'aRet: ' + aRet[01], 'UniversoADVPL' )

Return( Nil )