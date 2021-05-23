#INCLUDE "TOTVS.CH"

User Function dbUnlock()

dbSelectArea('SA1')

RecLock( 'SA1', .F. )
	
SA1->( dbUnlock() )

VarInfo( 'dbRLockList', dbRLockList() )

Return( Nil )