#INCLUDE "TOTVS.CH"

User Function GetUserFromSID()
Local cDomainName	:= ''
Local cUserName		:= ''

GetUserFromSID( GetCredential(), @cDomainName, @cUserName )

MsgInfo( "cDomainName: " + cDomainName + CRLF + ;
"cUserName: " + cUserName, 'UniversoADVPL' )

Return( Nil )