#INCLUDE "TOTVS.CH"

User Function SetFinishAppHandler()

SetFinishAppHandler( 'U_FIM', 'UniversoADVPL' )

Return( Nil )

User Function FIM( cMensagem )

MsgInfo( cMensagem, 'UniversoADVPL' )

Return( Nil )