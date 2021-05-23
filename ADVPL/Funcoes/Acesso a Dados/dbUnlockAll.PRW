#INCLUDE "TOTVS.CH"

User Function dbUnlockAll()



RecLock( 'SA1', .F. )
RecLock( 'SA2', .F. )


dbUnlockAll()


VarInfo( 'dbRLockList SA1', SA1->( dbRLockList() ) )
VarInfo( 'dbRLockList SA2', SA2->( dbRLockList() ) )

Return( Nil )