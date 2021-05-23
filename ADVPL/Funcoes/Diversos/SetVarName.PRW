#INCLUDE "TOTVS.CH"

User Function SetVarName()
Local nOldLen := SetVarNameLen(255)

Local cTamanhoVariavel01	:= 'Tamanho01'
Local cTamanhoVariavel02	:= 'Tamanho02'

MsgInfo( cTamanhoVariavel01 + ' / ' + cTamanhoVariavel02, 'UniversoADVPL' )

SetVarNameLen(nOldLen)

Return( Nil )