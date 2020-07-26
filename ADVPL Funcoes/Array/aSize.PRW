#INCLUDE "TOTVS.CH"

User Function aSize()
Local aInfo		:= Array(3)

AFILL( aInfo, 'UniversoADVPL',, 3 )
aSize( aInfo, Len( aInfo ) + 2 )

MsgInfo( aInfo[01], 'UniversoADVPL' )


Return( Nil )