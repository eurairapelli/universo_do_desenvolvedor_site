#INCLUDE "TOTVS.CH"
 
User Function Str2Bin()
Local cValor := 'UniversoADVPL'
 
MsgInfo( 'Valor: ' + cValtoChar(cValor) + CRLF + 'Retorno: ' + cValtoChar( Str2Bin( cValor ) ), 'UniversoADVPL' )
 
cValor := " x     x x    x  x    xx"
 
MsgInfo( 'Valor: ' + cValtoChar(cValor) + CRLF + 'Retorno: ' + cValtoChar( Str2Bin( cValor ) ), 'UniversoADVPL' )
 
cValor := " x     x x    x "
 
MsgInfo( 'Valor: ' + cValtoChar(cValor) + CRLF + 'Retorno: ' + cValtoChar( Str2Bin( cValor ) ), 'UniversoADVPL' )
 
cValor := "x"
 
MsgInfo( 'Valor: ' + cValtoChar(cValor) + CRLF + 'Retorno: ' + cValtoChar( Str2Bin( cValor ) ), 'UniversoADVPL' )
 
Return( Nil )