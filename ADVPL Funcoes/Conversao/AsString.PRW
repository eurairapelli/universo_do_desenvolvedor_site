#INCLUDE "TOTVS.CH"

User Function AsString()
Local aDados	:= {}

aAdd( aDados, 'Eurai' )
aAdd( aDados, 'UniversoADVPL' )
aAdd( aDados, { 'UniversoADVPL', 'Rapelli' } )


MsgInfo( AsString( aDados ) ;
+ CRLF + AsString( aDados, .T. ) , 'UniversoADVPL' )



Return( Nil )