#INCLUDE "TOTVS.CH"

User Function MsgNoYes()

If MsgNoYes( 'Confirma?', 'Universo do Desenvolvedor' )

	MsgInfo( 'Sim', 'Universo do Desenvolvedor' )

Else

	MsgInfo( 'N�o', 'Universo do Desenvolvedor' )

Endif

Return( Nil )

