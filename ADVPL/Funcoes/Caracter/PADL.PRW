#INCLUDE "TOTVS.CH"

User Function Padl()
Local cTexto	:= 'UniversoADVPL'

MsgInfo( 'Valor: ' + cTexto + CRLF + 'Retorno: ' + Padl(cTexto,20,'0'), 'UniversoADVPL' )

Return( Nil )