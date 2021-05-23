#INCLUDE "TOTVS.CH"

User Function aFill()
Local aInfo		:= Array(3)

AFILL( aInfo, 'UniversoADVPL',, 3 )


MsgInfo( aInfo[01], 'UniversoADVPL' )


Return( Nil )