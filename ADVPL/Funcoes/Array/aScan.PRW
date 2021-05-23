#INCLUDE "TOTVS.CH"

User Function aScan()
Local aInfo		:= Array(4)

AFILL( aInfo, 'UniversoADVPL',, 2 )
AFILL( aInfo, 'Eurai Rapelli',3, 2 )

MsgInfo( cValToChar(aScan( aInfo, { |xxcc| xxcc == 'Eurai Rapelli' } )), 'UniversoADVPL' )


Return( Nil )