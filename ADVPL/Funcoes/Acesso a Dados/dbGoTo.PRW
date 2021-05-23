#INCLUDE "TOTVS.CH"

User Function dbGoTo()

dbSelectArea('SA1')

SA1->( dbGoTo( 1570 ) )

MsgInfo( SA1->A1_COD, 'UniversoADVPL' )

Return( Nil )