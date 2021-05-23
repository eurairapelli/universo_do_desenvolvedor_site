#INCLUDE "TOTVS.CH"
#INCLUDE "APVT100.CH"

User Function VTRead()
Local cCliente := Space(6)

@ 0, 0 VTSAY "Selecione um Cliente" 
@ 1, 0 VTGET cCliente Picture "@!" VALID AllTrim( cCliente ) <> '' F3 'SA1'
VTRead
VTCLEAR
@ 0, 0 VTSAY "Selecionou: " + cCliente
VTPAUSE

Return( Nil )