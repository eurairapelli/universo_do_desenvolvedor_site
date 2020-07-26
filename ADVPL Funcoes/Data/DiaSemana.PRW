#INCLUDE "TOTVS.CH"

User Function DiaSemana()

MsgInfo( 'Valor 01: ' + cValtoChar( Date() ) ;
	+ CRLF + 'Semana: ' + cValtoChar( DiaSemana( Date() ) ) ; 
	+ CRLF + 'Semana: ' + cValtoChar( DiaSemana( Date(),, 3 ) ) ; 
	+ CRLF + 'Semana: ' + cValtoChar( DiaSemana( Date(), 20, 3 ) ) ; 
	+ CRLF + 'Semana: ' + cValtoChar( DiaSemana( Date(), 4, 3 ) ) ;
	+ CRLF + 'Semana: ' + cValtoChar( DiaSemana( ,, 3 ) ) , 'UniversoADVPL' )

Return( Nil )