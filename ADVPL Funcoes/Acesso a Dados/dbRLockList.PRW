#INCLUDE "TOTVS.CH"

User Function dbRLockList()

dbSelectArea('SA1')

dbGoTo(2)

If !dbRLock()
	Conout( 'Não Bloqueou' )
Endif 
If !dbRLock(4)
	Conout( 'Não Bloqueou' )
Endif 

VarInfo( 'dbRLockList', dbRLockList() )

Return( Nil )