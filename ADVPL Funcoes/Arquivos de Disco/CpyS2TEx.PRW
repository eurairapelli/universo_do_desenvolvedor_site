#INCLUDE "TOTVS.CH"

User Function CpyS2TEx()

If CpyS2TEx( "\system\SX3010.DTC", "C:\TEMP\SX3TMP.DTC" )
	Conout( 'Copiado com Sucesso' )
Endif
  
Return( Nil )