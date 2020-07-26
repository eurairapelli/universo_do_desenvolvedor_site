#INCLUDE "TOTVS.CH"

User Function dbRecall()

dbSelectArea('SA1')

Reclock( 'SA1', .F. )

	SA1->( dbDelete() )

SA1->( MsUnlock() )

SA1->( dbGoTo( 1 ) )

Reclock( 'SA1', .F. )

	SA1->( dbRecall() )
	
SA1->( MsUnlock() )	


Return( Nil )