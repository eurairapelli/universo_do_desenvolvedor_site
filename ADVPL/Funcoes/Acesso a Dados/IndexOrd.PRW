#INCLUDE "TOTVS.CH"

User Function IndexOrd()

dbSelectArea('SA1')
SA1->( dbSetOrder( 3 ) )

MsgInfo( cValtoChar( IndexOrd() ), 'UniversoADVPL' )


Return( Nil )