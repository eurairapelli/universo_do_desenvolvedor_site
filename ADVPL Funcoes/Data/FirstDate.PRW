#INCLUDE "TOTVS.CH"

User Function FirstDate()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) ;
	+ CRLF + 'Dia: ' + cValtoChar( FirstDate( Date() ) ) , 'UniversoADVPL' )

Return( Nil )