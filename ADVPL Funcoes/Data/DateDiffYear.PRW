#INCLUDE "TOTVS.CH"

User Function DiffYear()
Local dDate01	:= Date()
Local dDate02	:= YearSum( Date(), 3 )

MsgInfo( 'Valor 01: ' + cValtoChar( dDate01 ) ;
	+ CRLF + 'Valor 02: ' + cValtoChar( dDate02 ) ;
	+ CRLF + 'Retorno: ' + cValtoChar( DateDiffYear( dDate01, dDate02 ) ), 'UniversoADVPL' )

Return( Nil )