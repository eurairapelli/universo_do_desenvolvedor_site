#INCLUDE "TOTVS.CH"

User Function AVISO()
Local nOpc	:= 0

//nOpc := Aviso( "UniversoADVPL", 'Mensagem', { "Sim", "Não", "Sim - Todos", "Não - Todos" }, ;
//				3, "Titulo da Descrição",, 'ENGRENAGEM', .F., 5000 )


//nOpc := Aviso( "UniversoADVPL", 'Mensagem', { "Sim", "Não", "Sim - Todos", "Não - Todos", 3, "Titulo da Descrição",, 'ENGRENAGEM', } )
nOpc := Aviso( "", '', { "Sim", "Não", "Sim - Todos", "Não - Todos" } )

If nOpc == 1

	MsgInfo( 'Sim', 'UniversoADVPL' )

ElseIf nOpc == 2

	MsgInfo( 'Não', 'UniversoADVPL' )

ElseIf nOpc == 3

	MsgInfo( 'Sim - Todos', 'UniversoADVPL' )

ElseIf nOpc == 4

	MsgInfo( 'Não - Todos', 'UniversoADVPL' )
	
Endif

Return( Nil )