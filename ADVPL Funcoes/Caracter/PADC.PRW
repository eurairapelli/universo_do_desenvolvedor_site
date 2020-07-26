#INCLUDE "TOTVS.CH"

User Function Padc()
Local cTexto	:= 'UniversoADVPL'

MsgInfo( 'Valor: ' + cTexto + CRLF + 'Retorno: ' + Padc(cTexto,20,'0'), 'UniversoADVPL' )

Return( Nil )