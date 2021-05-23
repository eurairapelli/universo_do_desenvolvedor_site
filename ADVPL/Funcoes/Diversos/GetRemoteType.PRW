#INCLUDE "TOTVS.CH"

User Function GetRemoteType()
Local cLib	:= ''

MsgInfo( "GetRemoteType: " + cValtoChar( GetRemoteType( @cLib ) ) + CRLF + ;
"GetRemoteType: " + cLib, 'UniversoADVPL' )

Return( Nil )