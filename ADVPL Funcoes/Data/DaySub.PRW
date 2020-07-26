#INCLUDE "TOTVS.CH"

User Function DaySub()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) + CRLF + 'Retorno: ' + cValtoChar( DaySub( Date(), 3 ) ), 'UniversoADVPL' )

Return( Nil )