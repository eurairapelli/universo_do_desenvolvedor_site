#INCLUDE "TOTVS.CH"

User Function ROUND()

MsgInfo( 'Valor: ' + cValtoChar( 1024.896211344 ) ;
	+ CRLF +  'Retorno: ' + cValtoChar( ROUND( 1024.896211344, 2 ) ) ;
	+ CRLF +  'Retorno: ' + cValtoChar( ROUND( 1024.896211344, 0 ) ) , 'UniversoADVPL' )

Return( Nil )