#INCLUDE "TOTVS.CH"

User Function CDOW()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) ;
	+ CRLF + 'Semana: ' + cValtoChar( CDOW( Date() ) ) , 'UniversoADVPL' )

Return( Nil )