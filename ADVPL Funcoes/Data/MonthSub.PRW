#INCLUDE "TOTVS.CH"

User Function MonthSub()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) + CRLF + 'Retorno: ' + cValtoChar( MonthSub( Date(), 3 ) ), 'UniversoADVPL' )

Return( Nil )