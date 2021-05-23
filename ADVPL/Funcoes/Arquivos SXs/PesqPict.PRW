#INCLUDE "TOTVS.CH"

User Function PesqPict()
Local cAlias	:= 'SD2'
Local cCampo	:= 'D2_QUANT'

MsgInfo( 'Valor: ' + cAlias+'/'+cCampo + CRLF + "Retorno: " + PesqPict( cAlias, cCampo ), 'UniversoADVPL' )

Return( Nil )