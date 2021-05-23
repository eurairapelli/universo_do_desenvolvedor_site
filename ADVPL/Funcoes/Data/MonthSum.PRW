#INCLUDE "TOTVS.CH"

User Function MonthSum()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) + CRLF + 'Retorno: ' + cValtoChar( MonthSum( Date(), 3 ) ), 'UniversoADVPL' )

Return( Nil )