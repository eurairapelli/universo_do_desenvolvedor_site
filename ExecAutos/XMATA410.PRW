#INCLUDE "TOTVS.CH"
#include 'Topconn.ch' 

/*/{Protheus.doc} XMATA410
Execauto CTBA102

@type		function
@author		Eurai Rapelli
@since 		2019.02.14

@example	U_XMATA410()
/*/
User Function XMATA410()
Local _lOk 		:= .T.
Local aItem		:= {}
Local aItens	:= {}
Local aCab 		:= {}

Private lMsErroAuto	:= .F.


aAdd( aSC5, {"C5_FILIAL" 	, oJsonRest:FILIAL 				, NIL } ) //Filial
aAdd( aSC5, {"C5_TIPO"   	, oJsonRest:C5_TIPO   			, NIL } ) //Tipo da Nota
aAdd( aSC5, {"C5_CLIENTE"	, cXXCOD						, NIL } ) //Fornecedor
aAdd( aSC5, {"C5_LOJACLI"  	, cXXLOJA	  					, NIL } ) //Loja do Fornecedor
aAdd( aSC5, {"C5_EMISSAO" 	, Ctod(oJsonRest:C5_EMISSAO) 	, NIL } ) //Data de Emissão
aAdd( aSC5, {"C5_CONDPAG"	, oJsonRest:C5_CONDPAG    		, NIL } ) //Condição Pagamento



	aTmp 		:= {}
	cItemNF 	:= Soma1(cItemNF)
	
	aAdd( aTmp, {"C6_FILIAL" 	, oJsonRest:FILIAL 						, NIL } )
	aAdd( aTmp, {"C6_ITEM"		, cItemNF	  							, NIL } )
	aAdd( aTmp, {"C6_PRODUTO"	, oJsonRest:SC6[nI]:C6_PRODUTO			, NIL } )
	aAdd( aTmp, {"C6_QTDVEN"	, oJsonRest:SC6[nI]:C6_QTDVEN			, NIL } )
	aAdd( aTmp, {"C6_PRCVEN"	, oJsonRest:SC6[nI]:C6_PRCVEN			, NIL } )
	aAdd( aTmp, {"C6_VALOR"		, oJsonRest:SC6[nI]:C6_VALOR			, NIL } )
	aAdd( aTmp, {"C6_TES"		, oJsonRest:SC6[nI]:C6_TES				, NIL } )
	If !Empty( oJsonRest:SC6[nI]:C6_NFORI ) .AND. !Empty( oJsonRest:SC6[nI]:C6_SERIORI ) .AND. !Empty( oJsonRest:SC6[nI]:C6_ITEMORI ) 
		aAdd( aTmp, {"C6_NFORI"	 	, oJsonRest:SC6[nI]:C6_NFORI  		, Nil  } )
		aAdd( aTmp, {"C6_SERIORI"	, oJsonRest:SC6[nI]:C6_SERIORI  	, Nil  } )
		aAdd( aTmp, {"C6_ITEMORI"	, oJsonRest:SC6[nI]:C6_ITEMORI  	, Nil  } )
	Endif
	
	aAdd( aSC6, aTmp )



Begin Transaction



MSExecAuto( {|X,Y,Z| CTBA102(X,Y,Z)} ,aCab ,aItens, 3)

If !lMsErroAuto
	_lOk := .T.
	If !IsBlind()
		//DisarmTransaction()
		MsgInfo('Inclusão com sucesso!')
	EndIf
Else
	_lOk := .F.
	If !IsBlind()
		MsgAlert('Erro na inclusao!')
		MostraErro()
	Endif

EndIf



End Transaction


Return( Nil )


