#INCLUDE "TOTVS.CH"

User Function STRZERO()
Local nValor := 10

MsgInfo( 'Valor: ' + cValtoChar(nValor) + CRLF + 'Retorno: ' + STRZERO( nValor, 4 ), 'UniversoADVPL' )

Return( Nil )