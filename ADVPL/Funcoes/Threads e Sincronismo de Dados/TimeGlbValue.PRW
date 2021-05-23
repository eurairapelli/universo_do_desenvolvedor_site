#INCLUDE "TOTVS.CH"

User Function TimeGlbValue()

PutGlbValue( 'UAVAR01', "VAR UniversoADVPL" )

Sleep(2000)

MsgInfo( cValtoChar(TimeGlbValue('UAVAR01')) + ' decorridos', 'UniversoADVPL' )

Return( Nil )