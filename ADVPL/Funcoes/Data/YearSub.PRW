#INCLUDE "TOTVS.CH"

User Function YearSub()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) + CRLF + 'Retorno: ' + cValtoChar( YearSub( Date(), 3 ) ), 'UniversoADVPL' )

Return( Nil )