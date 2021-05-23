#INCLUDE "TOTVS.CH"

User Function aTail()
Local aInfo		:= Array(4)

AFILL( aInfo, 'UniversoADVPL',, 2 )
AFILL( aInfo, 'Eurai Rapelli',3, 2 )

MsgInfo( ATAIL(aInfo), 'UniversoADVPL' )


Return( Nil )