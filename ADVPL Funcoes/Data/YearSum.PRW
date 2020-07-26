#INCLUDE "TOTVS.CH"

User Function YearSum()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) + CRLF + 'Retorno: ' + cValtoChar( YearSum( Date(), 3 ) ), 'UniversoADVPL' )

Return( Nil )