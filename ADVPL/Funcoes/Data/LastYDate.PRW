#INCLUDE "TOTVS.CH"

User Function LastYDate()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) ;
	+ CRLF + 'Dia: ' + cValtoChar( LastYDate( Date() ) ) , 'UniversoADVPL' )

Return( Nil )