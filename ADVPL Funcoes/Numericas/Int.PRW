#INCLUDE "TOTVS.CH"

User Function Int()

MsgInfo( 'Valor: ' + cValtoChar( 1024.89 ) + CRLF + ;
 			'Retorno: ' + cValtoChar( Int( 1024.89 ) ) , 'UniversoADVPL' )

Return( Nil )