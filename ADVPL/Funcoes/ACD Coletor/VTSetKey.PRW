#INCLUDE "TOTVS.CH"
#INCLUDE "APVT100.CH"

User Function VTSetKey()
Local cCodigo := Space(6)    

VTSET KEY 65 TO TESTE //Tecla A
     
@ 1, 1 VTGET cCodigo
VTREAD

Return( Nil )

Static Function Teste()

@ 2,1 VTSay "Funcao"   

Return( Nil )
