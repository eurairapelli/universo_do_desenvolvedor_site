#INCLUDE "TOTVS.CH"

User Function GetSx3Cache()
Local cCampo	:= 'A1_PESSOA'
Local cInfo		:= 'X3_TIPO'

MsgInfo( 'Valor: ' + cCampo+'/'+cInfo + CRLF + "Retorno: " + cValtoChar( GetSx3Cache( cCampo, cInfo ) ), 'UniversoADVPL' )

Return( Nil )