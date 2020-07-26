#INCLUDE "TOTVS.CH"
#INCLUDE "APVT100.CH"

User Function VTSay()

VtClear()
@ 1, 1 VTSAY 999.12 
@ 2, 1 VTSAY "Teste"
@ 4, 1 VTSAY "Descrição" PICTURE "@!"  
VTPAUSE

Return( Nil )