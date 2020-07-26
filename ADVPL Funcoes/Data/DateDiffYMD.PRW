#INCLUDE "TOTVS.CH"

User Function DiffYMD()
Local dDate01	:= Date()
Local dDate02	:= YearSum( MonthSum( DaySum( Date(), 1 ), 2 ), 3 )
Local aRet		:= DateDiffYMD( dDate01, dDate02 )


MsgInfo( 'Valor 01: ' + cValtoChar( dDate01 ) ;
	+ CRLF + 'Valor 02: ' + cValtoChar( dDate02 ) ;
	+ CRLF + 'Anos: ' + cValtoChar( aRet[01] ) ; 
	+ CRLF + 'Meses: ' + cValtoChar( aRet[02] ) ; 
	+ CRLF + 'Dias: ' + cValtoChar( aRet[03] ) , 'UniversoADVPL' )

Return( Nil )