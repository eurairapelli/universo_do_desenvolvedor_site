#INCLUDE "TOTVS.CH"

User Function MsCopyFile()

If !MsCopyFile('\system\SB1990.DYC', '\system\B1TMP.DTC')	
	MsgAlert("O arquivo não pôde ser copiado.")
Endif

Return( Nil )