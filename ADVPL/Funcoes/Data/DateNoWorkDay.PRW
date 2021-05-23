#INCLUDE "TOTVS.CH"

User Function NoWorkDay()
Local dDate01	:= FirstDate( Date() )
Local dDate02	:= LastDate( Date() )

MsgInfo( 'Valor 01: ' + cValtoChar( dDate01 ) ;
	+ CRLF + 'Valor 02: ' + cValtoChar( dDate02 ) ;
	+ CRLF + 'Retorno: ' + cValtoChar( DateNoWorkDay( dDate01, dDate02 ) ), 'UniversoADVPL' )

Return( Nil )