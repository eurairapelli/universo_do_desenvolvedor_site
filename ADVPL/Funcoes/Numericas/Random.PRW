#INCLUDE "TOTVS.CH"

User Function Random()

MsgInfo( 'Retorno: ' + cValtoChar( Random( 200, 300 ) ) + CRLF + ;
 			'Retorno: ' + cValtoChar( Random( 40, 50 ) ) , 'Universo do Desenvolvedor' )

Return( Nil )
