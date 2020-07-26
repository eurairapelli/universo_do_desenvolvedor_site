#INCLUDE "TOTVS.CH"

User Function ClearVarSetGet()
Local bBloco	:= { || MsgInfo('UniversoADVPL','UniversoADVPL') }

Eval( bBloco )

ClearVarSetGet( 'bBloco' )

Eval( bBloco )

Return( Nil )