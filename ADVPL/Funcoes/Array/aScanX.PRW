#INCLUDE "TOTVS.CH"

User Function aScanX()
Local aInfo		:= Array(4)

AFILL( aInfo, 'UniversoADVPL',, 2 )
AFILL( aInfo, 'Eurai Rapelli',3, 2 )

MsgInfo( cValToChar(aScanX( aInfo, { |xxcc,vvbb| xxcc == 'Eurai Rapelli' .AND. vvbb < 3 } )), 'UniversoADVPL' )


Return( Nil )