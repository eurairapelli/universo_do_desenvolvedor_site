#INCLUDE "TOTVS.CH"

User Function Year()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) + CRLF + 'Retorno: ' + Str( Year( Date() ) ), 'UniversoADVPL' )

Return( Nil )