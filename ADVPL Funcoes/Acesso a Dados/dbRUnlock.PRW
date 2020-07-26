#INCLUDE "TOTVS.CH"

User Function dbRUnlock()

dbSelectArea('SA1')

dbGoTo(2)

If !dbRLock()
	Conout( 'Não Bloqueou' )
Endif 
If !dbRLock(4)
	Conout( 'Não Bloqueou' )
Endif

dbRUnlock(4) 

VarInfo( 'dbRLockList', dbRLockList() )


If !dbRLock()
	Conout( 'Não Bloqueou' )
Endif 
If !dbRLock(4)
	Conout( 'Não Bloqueou' )
Endif

dbRUnlock() 

VarInfo( 'dbRLockList', dbRLockList() )

Return( Nil )