#INCLUDE "TOTVS.CH"

User Function RetArq()

MsgInfo( 'SX3: ' + RetArq( __LocalDriver, 'SX3010', .T.) + CRLF + ;
'SX3: ' + RetArq( __LocalDriver, 'SX3010', .F.) + CRLF + ;
'SA1: ' + RetArq( 'TOPCONN', 'SA1', .F.), 'UniversoADVPL' )

Return( Nil )