#INCLUDE "TOTVS.CH"

User Function GetGlbValue()

PutGlbValue( 'UAVAR', "VAR UniversoADVPL" )

MsgInfo( GetGlbValue('UAVAR'), 'UniversoADVPL' )

Return( Nil )