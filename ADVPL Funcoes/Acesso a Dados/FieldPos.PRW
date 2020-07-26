#INCLUDE "TOTVS.CH"

User Function FieldPos()
Local cRet		:= ''


dbSelectArea('SA1')

If FieldPos("A1_XNOVO") > 0
	cRet	:= SA1->A1_XNOVO
Else
	cRet	:= 'Nao Existe'
Endif

Return( Nil )