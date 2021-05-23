#INCLUDE "TOTVS.CH"

User Function ConflictDate()
Local dDate01	:= FirstDate( Date() )
Local dDate02	:= LastDate( Date() )

MsgInfo( 'Valor 01: ' + cValtoChar( dDate01 ) ;
	+ CRLF + 'Valor 02: ' + cValtoChar( dDate02 ) ;
	+ CRLF + 'Retorno: ' + cValtoChar( ConflictDate( dDate01, dDate02, Ctod('29/07/2015'), Ctod('25/08/2015') ) ), 'UniversoADVPL' )

Return( Nil )