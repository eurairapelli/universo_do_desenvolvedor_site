#INCLUDE "TOTVS.CH"

User Function MsgNoYes()

If MsgNoYes( 'Confirma?', 'Universo do Desenvolvedor' )

	MsgInfo( 'Sim', 'Universo do Desenvolvedor' )

Else

	MsgInfo( 'Não', 'Universo do Desenvolvedor' )

Endif

Return( Nil )

