#INCLUDE "TOTVS.CH"

User Function GETDTOVAL()
Local cValor := '10AACCAA20NN30'

MsgInfo( 'Valor: ' + cValor + CRLF + 'Retorno: ' + cValtoChar( GETDTOVAL( cValor ) ), 'UniversoADVPL' )

Return( Nil )