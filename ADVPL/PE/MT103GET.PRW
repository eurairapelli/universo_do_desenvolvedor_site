#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} MT103GET
Descricao

@type		function
@author		Eurai Rapelli
@since 		22/02/2019

@param		Variavel		, Tipo		, Descrição

@return		Variavel		, Tipo		, Descrição
/*/
User Function MT103GET()
Local lRet		:= .F.
Local cReadVar	:= ReadVar()

If !Empty(aCols[n,GdFieldPos('D1_PEDIDO')])

	//If cReadVar == 'CCONDICAO'
		//Help(NIL, NIL, "MT103GET", NIL, "Nao pode alterar a condicao", 1, 0, NIL, NIL, NIL, NIL, NIL, {"Nao pode alterar a condicao"})
		//lRet	:= .F.
	//Endif
	If cReadVar == 'M->E2_VENCTO'
		Help(NIL, NIL, "MT103GET", NIL, "Nao pode alterar o vencimento", 1, 0, NIL, NIL, NIL, NIL, NIL, {"Nao pode alterar o vencimento"})
		lRet	:= .F.
	Endif

Endif
conout('MT103GET ' + ReadVar() )

Return( lRet )