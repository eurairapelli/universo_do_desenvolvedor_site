#INCLUDE "TOTVS.CH"

User Function GetHlpSoluc()
Local aHelp := GetHlpSoluc("A1_PESSOA")'

MsgInfo( 'Valor: ' + "A1_PESSOA" + CRLF + "Help de Problema: " + aHelp[1] + CRLF + "Help de Solução: "+ aHelp[2], 'UniversoADVPL' )

Return( Nil )