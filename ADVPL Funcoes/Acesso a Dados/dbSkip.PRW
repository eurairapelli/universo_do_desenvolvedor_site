#INCLUDE "TOTVS.CH"

User Function dbSkip()

dbSelectArea("SA1")

Do While SA1->( !EOF() )
	
	Conout( SA1->A1_COD )

	SA1->( dbSkip() )
EndDo

Return( Nil )