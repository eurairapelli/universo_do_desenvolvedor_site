#INCLUDE "TOTVS.CH"

User Function GetSrcArray()
Local nI		:= 0
Local aFontes 	:= GetSrcArray("F??A*.PRW")

For nI := 1 to Len( aFontes )

	Conout("Fonte " + aFontes[nI] + " encontrado")

Next nI

Return( Nil )