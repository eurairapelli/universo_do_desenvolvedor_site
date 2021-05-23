#INCLUDE "TOTVS.CH"

User Function dbCloseArea()

dbSelectArea('SA1')
SA1->( dbCloseArea() )

Return( Nil )