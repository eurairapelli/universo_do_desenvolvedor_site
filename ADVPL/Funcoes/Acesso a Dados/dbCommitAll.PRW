#INCLUDE "TOTVS.CH"

User Function dbCommitAll()

RecLock( 'SA1', .F. )
	SA1->A1_NOME	:= 'TESTE'
SA1->( MsUnlock() )

RecLock( 'SA2', .F. )
	SA2->A2_NOME	:= 'TESTE'
SA2->( MsUnlock() )


dbCommitAll()


Return( Nil )