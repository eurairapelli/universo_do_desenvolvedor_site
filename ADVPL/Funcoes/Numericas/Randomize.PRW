#INCLUDE "TOTVS.CH"

User Function Randomize()

MsgInfo( 'Retorno: ' + cValtoChar( Randomize( 200, 300 ) ) + CRLF + ;
 			'Retorno: ' + cValtoChar( Randomize( 40, 50 ) ) , 'UniversoADVPL' )

Return( Nil )