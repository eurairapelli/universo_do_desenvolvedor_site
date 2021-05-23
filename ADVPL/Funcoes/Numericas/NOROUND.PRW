#INCLUDE "TOTVS.CH"

User Function NOROUND()

MsgInfo( 'Valor: ' + cValtoChar( 1024.894211344 ) ;
	+ CRLF +  'Retorno: ' + cValtoChar( NOROUND( 1024.894211344, 2 ) ) ;
	+ CRLF +  'Retorno: ' + cValtoChar( NOROUND( 1024.894211344, 0 ) ) , 'UniversoADVPL' )

Return( Nil )