#INCLUDE "TOTVS.CH"

User Function MsgYesNo()

If MsgYesNo( 'Confirma?', 'UniversoADVPL' )

	MsgInfo( 'Sim', 'UniversoADVPL' )

Else

	MsgInfo( 'Não', 'UniversoADVPL' )

Endif

Return( Nil )