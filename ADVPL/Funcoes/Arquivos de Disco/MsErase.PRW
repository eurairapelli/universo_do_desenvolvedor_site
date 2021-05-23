#INCLUDE "TOTVS.CH"

User Function MsErase()

If !MsErase('\system\SB1990.DTC')	

	MsgInfo("O arquivo não pode ser apagado.",'UniversoADVPL')

Endif

Return( Nil )