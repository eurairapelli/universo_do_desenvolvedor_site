#INCLUDE "TOTVS.CH"

User Function GetBuild()

MsgInfo( "cBuild .T.: " + cValtoChar( GetBuild(.T.) ) + CRLF + ;
"cBuild .T.: " + cValtoChar( GetBuild(.F.) ), 'UniversoADVPL' )


Return( Nil )