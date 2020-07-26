#INCLUDE "TOTVS.CH"

User Function aIns()
Local aInfo		:= Array(3)

AFILL( aInfo, 'UniversoADVPL',, 3 )
aSize( aInfo, Len( aInfo ) + 1 )
AINS(aInfo,2)

MsgInfo( aInfo[01], 'UniversoADVPL' )


Return( Nil )