#INCLUDE "TOTVS.CH"

User Function LastDate()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) ;
	+ CRLF + 'Dia: ' + cValtoChar( LastDate( Date() ) ) , 'UniversoADVPL' )

Return( Nil )