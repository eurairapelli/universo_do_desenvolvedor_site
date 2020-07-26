#INCLUDE "TOTVS.CH"

User Function IsNumeric()

MsgInfo( 'Retorno: ' + cValtoChar( IsNumeric( '11AAA222' ) ) ;
	+ CRLF + 'Retorno: ' + cValtoChar( IsNumeric( '11234990877655' ) ) ; 
	+ CRLF + 'Retorno: ' + cValtoChar( IsNumeric( '123.444' ) ) , 'UniversoADVPL' )

Return( Nil )