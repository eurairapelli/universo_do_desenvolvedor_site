#INCLUDE "TOTVS.CH"

User Function FieldGet()

dbSelectArea('SA1')
SA1->( dbSkip(3) )

MsgInfo( FieldGet( 5 ), 'UniversoADVPL' )

Return( Nil )