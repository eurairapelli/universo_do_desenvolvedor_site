#INCLUDE "TOTVS.CH"

User Function Max()

MsgInfo( 'Retorno: ' + cValtoChar( Max( 200, 100 ) ) ;
	+ CRLF + 'Retorno: ' + cValtoChar( Max( 100, 300 ) ) ; 
	+ CRLF + 'Retorno: ' + cValtoChar( Max( Date(), Date()+10 ) ) , 'UniversoADVPL' )

Return( Nil )