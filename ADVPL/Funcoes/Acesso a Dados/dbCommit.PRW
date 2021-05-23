#INCLUDE "TOTVS.CH"

User Function dbCommit()

dbSelectArea('SA1')
RecLock( 'SA1', .F. )
	SA1->A1_NOME	:= 'TESTE'
SA1->( dbCommit() )
SA1->( MsUnlock() )

Return( Nil )