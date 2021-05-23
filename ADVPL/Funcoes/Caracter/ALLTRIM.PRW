#INCLUDE "TOTVS.CH"

User Function AllTrim()
Local cTexto	:= '   UniversoADVPL   '


MsgInfo( 'Valor: |' + cTexto + '|' + CRLF + ' Retorno: |' + AllTrim(cTexto) + '|', 'UniversoADVPL' )

Return( Nil )