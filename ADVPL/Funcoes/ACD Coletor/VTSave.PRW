#INCLUDE "TOTVS.CH"
#INCLUDE "APVT100.CH"

User Function VTSave()
Local cCliente := Space(6)

@ 0, 0 VTSAY "Selecione um Cliente" 
@ 1, 0 VTGET cCliente Picture "@!" VALID AllTrim( cCliente ) <> '' F3 'SA1'
VTRead

VTSave Screen To aTela

VTCLEAR
@ 0, 0 VTSAY "Selecionou: " + cCliente
VTPAUSE

VTRestore Screen From aTela

@ 2, 0 VTSAY "Restauro a tela: "
VTPAUSE

Return( Nil )