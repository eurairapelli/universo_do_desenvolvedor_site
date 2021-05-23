#INCLUDE "TOTVS.CH"

User Function FwTimeUF()
Local aRet	:= {}

aRet := FwTimeUF('AC')

VarInfo('aRet AC', aRet)

aRet := FwTimeUF('SP')

VarInfo('aRet SP', aRet)

Return( Nil )