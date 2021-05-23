#INCLUDE "TOTVS.CH"
#include 'Topconn.ch' 

/*/{Protheus.doc} XCTBA102
Execauto CTBA102

@type		function
@author		Eurai Rapelli
@since 		2017.12.21

@example	U_XCTBA102()
/*/
User Function XCTBA102()
Local _lOk 		:= .T.
Local aItem		:= {}
Local aItens	:= {}
Local aCab 		:= {}

Private lMsErroAuto	:= .F.


aAdd( aCab, { 'DDATALANC' 	, dDataBase 				, NIL } )
aAdd( aCab, { 'CLOTE' 		, '008800' 					, NIL } )
aAdd( aCab, { 'CSUBLOTE' 	, '001' 					, NIL } )
aAdd( aCab, { 'CDOC'		, StrZero( seconds() ,6) 	, NIL } )
aAdd( aCab, { 'CPADRAO' 	, '' 						, NIL } )
aAdd( aCab, { 'NTOTINF' 	, 0 						, NIL } )
aAdd( aCab, { 'NTOTINFLOT' 	, 0 						, NIL } )



aAdd( aItem, { 'CT2_FILIAL' , 'D MG 01 ' 			, NIL} )
aAdd( aItem, { 'CT2_LINHA' 	, '001' 				, NIL} )
aAdd( aItem, { 'CT2_MOEDLC' , '01' 					, NIL} )
aAdd( aItem, { 'CT2_DC' 	, '3' 					, NIL} )
aAdd( aItem, { 'CT2_DEBITO' , 'PLANO_0221' 			, NIL} )
aAdd( aItem, { 'CT2_CREDIT' , 'PLANO_0112' 			, NIL} )
//aAdd( aItem, { 'CT2_DEBITO' , '1112000010' 			, NIL} )
//aAdd( aItem, { 'CT2_CREDIT' , '5112000003' 			, NIL} )
aAdd( aItem, { 'CT2_VALOR' 	,  100 					, NIL} )
aAdd( aItem, { 'CT2_ORIGEM' , 'MSEXECAUT'			, NIL} )
aAdd( aItem, { 'CT2_HP' 	, '' 					, NIL} )
aAdd( aItem, { 'CT2_HIST' 	, 'MSEXECAUT INCLUSAO CONTINUACAO DE HISTORICO COM MAIS DE 80 CARACTERES!!!!!!!!!!!', NIL} )
aAdd( aItens, aItem )

//este trecho deve ser usado apenas quando necessário incluir continuação de histórico
//aAdd(aItens,{ {'CT2_FILIAL' ,'D MG 01 ' , NIL},;
//{'CT2_LINHA' ,'002' , NIL},; 
//{'CT2_DC' ,'4' , NIL},;
//{'CT2_HIST' ,'CONT - MSEXECAUT INCLUSAO CONTINUACAO DE HISTORICO COM MAIS DE 80 CARACT', NIL} } )



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


