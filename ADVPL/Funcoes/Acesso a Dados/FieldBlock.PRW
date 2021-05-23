#INCLUDE "TOTVS.CH"

User Function FieldBlock()

dbSelectArea('SA1')

MsgInfo( cValtoChar( Eval( FieldBlock( "A1_COD" ) ) ), 'UniversoADVPL' )

Return( Nil )