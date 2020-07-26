#INCLUDE "TOTVS.CH"

User Function FirstYDate()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) ;
	+ CRLF + 'Dia: ' + cValtoChar( FirstYDate( Date() ) ) , 'UniversoADVPL' )

Return( Nil )