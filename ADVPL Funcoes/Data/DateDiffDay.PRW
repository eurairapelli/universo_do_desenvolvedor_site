#INCLUDE "TOTVS.CH"

User Function DiffDay()
Local dDate01	:= Date()
Local dDate02	:= DaySum( Date(), 3 )

MsgInfo( 'Valor 01: ' + cValtoChar( dDate01 ) ;
	+ CRLF + 'Valor 02: ' + cValtoChar( dDate02 ) ;
	+ CRLF + 'Retorno: ' + cValtoChar( DateDiffDay( dDate01, dDate02 ) ), 'UniversoADVPL' )

Return( Nil )