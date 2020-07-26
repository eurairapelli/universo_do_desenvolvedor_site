#INCLUDE "TOTVS.CH"

User Function SomaHoras()
Local cHora01	:= 10.20
Local cHora02	:= 02.30

MsgInfo( 'Valor 01: ' + cValtoChar( cHora01 ) ;
	+ CRLF + 'Valor 02: ' + cValtoChar( cHora02 ) ;
	+ CRLF + 'Retorno: ' + cValtoChar( SomaHoras( cHora01, cHora02 ) ), 'UniversoADVPL' )

cHora01	:= '10.30'
cHora02	:= '02.30'

MsgInfo( 'Valor 01: ' + cValtoChar( cHora01 ) ;
	+ CRLF + 'Valor 02: ' + cValtoChar( cHora02 ) ;
	+ CRLF + 'Retorno: ' + cValtoChar( SomaHoras( cHora01, cHora02 ) ), 'UniversoADVPL' )

cHora01	:= '10.30'
cHora02	:= '22.50'

MsgInfo( 'Valor 01: ' + cValtoChar( cHora01 ) ;
	+ CRLF + 'Valor 02: ' + cValtoChar( cHora02 ) ;
	+ CRLF + 'Retorno: ' + cValtoChar( SomaHoras( cHora01, cHora02 ) ), 'UniversoADVPL' )

Return( Nil )