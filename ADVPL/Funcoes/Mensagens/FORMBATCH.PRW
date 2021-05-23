#INCLUDE "TOTVS.CH"

User Function FormBatch()
Local cArqTxt 		:= ''

Local nOpc			:= 0

Local aMensagens 	:= {}	//Máximo de 7
Local aBotoes 		:= {}	//Máximo de 5

 
aAdd( aMensagens, 'Mensagem 01')
aAdd( aMensagens, 'Mensagem 02')
aAdd( aMensagens, 'Mensagem 03')
aAdd( aMensagens, 'Mensagem 04')
aAdd( aMensagens, 'Mensagem 05')
aAdd( aMensagens, 'Mensagem 06')
aAdd( aMensagens, 'Mensagem 07')

aAdd( aBotoes, { 1, .T., { || nOpc := 1, FechaBatch() } } )
aAdd( aBotoes, { 2, .T., { || nOpc := 2, FechaBatch() } } )
aAdd( aBotoes, { 3, .T., { || nOpc := 3, FechaBatch() } } )
aAdd( aBotoes, { 4, .T., { || nOpc := 4,  } } )
aAdd( aBotoes, { 5, .T., { || FechaBatch() } } )
 
 
FormBatch( 'Minha tela Customizada', aMensagens, aBotoes, {|| Iif( MsgYesNo( 'Executa?', 'UniversoADVPL' ), nOpc := 5,  ) }, 600, 800 )

If nOpc == 1

	MsgInfo( 'Ok', 'UniversoADVPL' )

ElseIf nOpc == 2

	MsgInfo( 'Cancelar', 'UniversoADVPL' )

ElseIf nOpc == 3

	MsgInfo( 'Excluir', 'UniversoADVPL' )

ElseIf nOpc == 4

	MsgInfo( 'Incluir', 'UniversoADVPL' )

ElseIf nOpc == 5

	MsgInfo( 'Param.', 'UniversoADVPL' )

Endif

Return( Nil )