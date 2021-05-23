#INCLUDE "TOTVS.CH"

User Function Dow()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) + CRLF + 'Retorno: ' + cValtoChar( Dow( Date() ) ), 'UniversoADVPL' )

Return( Nil )