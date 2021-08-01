#INCLUDE "TOTVS.CH"

User Function MsgYesNoTimer()

If MsgYesNoTimer( 'Confirma?', 'Universo do Desenvolvedor', 6000 )

	MsgInfo( 'Sim', 'Universo do Desenvolvedor' )

Else

	MsgInfo( 'Não', 'Universo do Desenvolvedor' )

Endif

Return( Nil )

