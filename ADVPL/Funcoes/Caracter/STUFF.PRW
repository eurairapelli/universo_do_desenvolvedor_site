#INCLUDE "TOTVS.CH"

User Function Stuff()
Local cTexto	:= 'UniversoADVPL'

MsgInfo( 'Valor: ' + cTexto + CRLF + 'Retorno: ' + Stuff( cTexto, 2, 7, "A" ), 'UniversoADVPL' )

Return( Nil )