#INCLUDE "TOTVS.CH"

User Function Min()

MsgInfo( 'Retorno: ' + cValtoChar( Min( 200, 100 ) ) ;
	+ CRLF + 'Retorno: ' + cValtoChar( Min( 100, 300 ) ) ; 
	+ CRLF + 'Retorno: ' + cValtoChar( Min( Date(), Date()+10 ) ) , 'UniversoADVPL' )

Return( Nil )