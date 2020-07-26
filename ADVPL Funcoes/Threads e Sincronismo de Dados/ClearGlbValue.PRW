#INCLUDE "TOTVS.CH"

User Function ClearGlbValue()

PutGlbValue( 'UAVAR', "VAR UniversoADVPL" )

ClearGlbValue( 'UAVAR' )

MsgInfo( GetGlbValue('UAVAR'), 'UniversoADVPL' )

Return( Nil )