#INCLUDE "TOTVS.CH"

User Function CpyT2S()

If CpyT2S( "C:\TEMP\SX3010.DTC", "\APPEND" )
	Conout( 'Copiado com Sucesso' )
Endif
  
Return( Nil )