#INCLUDE "TOTVS.CH"

User Function VAL()
Local cValor := '10'

MsgInfo( 'Valor: ' + cValtoChar(cValor) + CRLF + 'Retorno: ' + STRZERO( VAL( cValor ), 4 ), 'UniversoADVPL' )

Return( Nil )