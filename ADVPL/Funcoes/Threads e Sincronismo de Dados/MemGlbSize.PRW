#INCLUDE "TOTVS.CH"

User Function MemGlbSize()

PutGlbValue( 'UAVAR01', "VAR UniversoADVPL" )
PutGlbValue( 'UAVAR02', "VAR UniversoADVPL" )

MsgInfo( cValtoChar(MemGlbSize()) + ' Bytes', 'UniversoADVPL' )

Return( Nil )