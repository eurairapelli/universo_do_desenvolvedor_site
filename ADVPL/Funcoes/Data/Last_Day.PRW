#INCLUDE "TOTVS.CH"

User Function Last_Day()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) ;
	+ CRLF + 'Dia: ' + cValtoChar( Last_Day( Date() ) ) , 'UniversoADVPL' )

Return( Nil )