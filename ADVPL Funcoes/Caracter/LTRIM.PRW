#INCLUDE "TOTVS.CH"

User Function lTrim()
Local cTexto	:= '   UniversoADVPL   '

MsgInfo( 'Valor: |' + cTexto + '|' + CRLF + ' Retorno: |' + lTrim(cTexto) + '|', 'UniversoADVPL' )

Return( Nil )