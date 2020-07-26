#INCLUDE "TOTVS.CH"

User Function GetSX8Len()

GETSXENUM('SA1','A1_COD')
GETSXENUM('SA1','A1_COD')

MsgInfo( 'GetSX8Len: ' + cValtoChar(GetSX8Len()), 'UniversoADVPL' )

Return( Nil )