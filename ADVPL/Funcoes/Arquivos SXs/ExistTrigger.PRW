#INCLUDE "TOTVS.CH"

User Function ExistTrigger()
Local cCampo	:= 'C5_CLIENTE'

MsgInfo( 'Valor: ' + cCampo + CRLF + "Retorno: " + cValtoChar( ExistTrigger( cCampo ) ), 'UniversoADVPL' )

Return( Nil )