#INCLUDE "TOTVS.CH"

User Function fCount()

dbSelectArea('SA1')

MsgInfo( cValtoChar( SA1->( fCount() ) ), 'UniversoADVPL' )

Return( Nil )