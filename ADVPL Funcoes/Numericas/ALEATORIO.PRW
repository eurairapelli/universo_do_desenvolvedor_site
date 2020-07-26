#INCLUDE "TOTVS.CH"

User Function ALEATORIO()

MsgInfo( 'Retorno: ' + cValtoChar( Aleatorio( 200, 100 ) ) + CRLF + ;
 			'Retorno: ' + cValtoChar( Aleatorio( 40, 50 ) ) , 'UniversoADVPL' )

Return( Nil )