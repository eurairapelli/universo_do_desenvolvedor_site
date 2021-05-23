#INCLUDE "TOTVS.CH"
#INCLUDE "APVT100.CH"

User Function VTGet()
Local nNumber := 0

@ 0, 0 VTSAY "Digite um numero" VTGET nNumber VALID nNumber > 0
VTRead
VTCLEAR
@ 0, 0 VTSAY "Digitou: " + cValtoChar(nNumber)
VTPAUSE

Return( Nil )