#INCLUDE "TOTVS.CH"

User Function rTrim()
Local cTexto	:= '   UniversoADVPL   '

MsgInfo( 'Valor: |' + cTexto + '|' + CRLF + ' Retorno: |' + rTrim(cTexto) + '|', 'UniversoADVPL' )

Return( Nil )