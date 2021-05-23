#INCLUDE "TOTVS.CH"
#INCLUDE "APVT100.CH"

User Function VTSetSize()

VtClear()
@ 1, 1 VTSAY 999.12 
@ 2, 1 VTSAY "Teste"

VTSetSize( 3,3 )

//@ 4, 1 VTSAY "Descrição" PICTURE "@!"  
VTPAUSE

VTSetSize( 8,20 )

Return( Nil )