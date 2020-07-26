#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} MA120BUT
Incluir Botões na Tela do Pedido de Compras

@author		Eurai Rapelli
@since 		16/09/2014

@return		aButtons		, Array		, Novos Botões
/*/
User Function MA120BUT() 
Local aButtons	:= {}

aAdd( aButtons, { 'COMPREL', {|| MyFunction() }, 'Meu Botão', 'Meu Botão' } )

Return( aButtons )

/*/{Protheus.doc} MyFunction
Minha Função

@author		Eurai Rapelli
@since 		16/09/2014
/*/
Static Function MyFunction()

Pergunte("MTA120",.F.)

n := 01

aCols[ 01, GdFieldPos('C7_PRODUTO') ]	:= '00000'
A120Produto( aCols[ 01, GdFieldPos('C7_PRODUTO') ] )     
A120Trigger("C7_PRODUTO")

aCols[ 01, GdFieldPos('C7_QUANT') ]	:= 1
A120Trigger("C7_QUANT")

aCols[ 01, GdFieldPos('C7_PRECO') ]	:= 1
A120Trigger("C7_PRECO")

aCols[ 01, GdFieldPos('C7_TOTAL') ]	:= 1
A120Trigger("C7_TOTAL")


Return( Nil )