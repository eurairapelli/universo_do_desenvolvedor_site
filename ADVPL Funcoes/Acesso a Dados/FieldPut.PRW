#INCLUDE "TOTVS.CH"

User Function FieldPut()

dbSelectArea('SA1')

RecLock('SA1',.F.)

	FieldPut( 5, 'EURAI RAPELLI - ADVPL' )

SA1->( MsUnlock() )

MsgInfo( FieldGet( 5 ), 'UniversoADVPL' )

Return( Nil )