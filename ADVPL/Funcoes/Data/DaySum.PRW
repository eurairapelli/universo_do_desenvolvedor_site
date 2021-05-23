#INCLUDE "TOTVS.CH"

User Function DaySum()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) + CRLF + 'Retorno: ' + cValtoChar( DaySum( Date(), 3 ) ), 'UniversoADVPL' )

Return( Nil )