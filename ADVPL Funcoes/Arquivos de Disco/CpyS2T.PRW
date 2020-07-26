#INCLUDE "TOTVS.CH"

User Function CpyS2T()

If CpyS2T( "\system\SX3010.DTC", "C:\TEMP" )
	Conout( 'Copiado com Sucesso' )
Endif
  
Return( Nil )