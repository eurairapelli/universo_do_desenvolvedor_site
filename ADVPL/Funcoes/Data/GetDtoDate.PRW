#INCLUDE "TOTVS.CH"

User Function GetDtoDate()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) ;
	+ CRLF + 'Retorno: ' + cValtoChar( GetDtoDate( '21/07/2015' ) ) , 'UniversoADVPL' )

Return( Nil )