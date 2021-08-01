#INCLUDE "TOTVS.CH"

User Function FWAlertNoYes()

If FWAlertNoYes( 'Confirma?', 'Universo do Desenvolvedor' )

	MsgInfo( 'Sim', 'Universo do Desenvolvedor' )

Else

	MsgInfo( 'Não', 'Universo do Desenvolvedor' )

Endif

Return( Nil )

