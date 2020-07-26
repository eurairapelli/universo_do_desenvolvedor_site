#INCLUDE "TOTVS.CH"

User Function dbDelete()

dbSelectArea('SA1')

RecLock( 'SA1', .F. )
	SA1->( dbDelete() )
SA1->( MsUnlock() )

Return( Nil )