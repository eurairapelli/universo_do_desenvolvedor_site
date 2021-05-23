#INCLUDE "TOTVS.CH"

User Function CpyS2TW()

If CpyS2TW( "\system\SX3010.DTC" ) == 0
	Conout( 'Copiado com Sucesso' )
Endif
  
Return( Nil )