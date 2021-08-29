#INCLUDE "TOTVS.CH"
#INCLUDE 'FWMVCDEF.CH'

/*/{Protheus.doc} MATA010
Ponto de Entrada do Cadastro de Produto.

@type		function
@author		Eurai Rapelli
@since 		2021.08.28

@obs		http://tdn.totvs.com/display/public/PROT/ADV0041_PE_MVC_MATA010_P12
/*/
User Function ITEM()
Local aParam		:= PARAMIXB
Local xRet			:= .T.

Private oUAObj     	:= Nil
Private cIdPonto   	:= ''
Private cIdModel   	:= ''
Private cClasse    	:= ''
Private cCRLF 		:= CRLF


Begin Sequence



If aParam <> NIL

	oUAObj      := aParam[1]
	cIdPonto   	:= aParam[2]
	cIdModel   	:= IIf( oUAObj <> NIL, oUAObj:GetId(), aParam[3] )
	cClasse    	:= IIf( oUAObj <> NIL, oUAObj:ClassName(), '' )

	
	
	If cIdPonto == 'MODELVLDACTIVE'


	ElseIf cIdPonto == 'MODELPOS'

		If !(xRet := fModelPos())
			Break
		Endif

	
	ElseIf cIdPonto == 'MODELCOMMITTTS'

		
	Endif




Endif



End Sequence


Return( xRet )


/*/{Protheus.doc} fModelPos
Validacao do Modelo

@type		function
@author		Eurai Rapelli
@since 		2021.08.28

@obs		http://tdn.totvs.com/display/public/PROT/ADV0041_PE_MVC_MATA010_P12
/*/
Static Function fModelPos()
Local lRet 		:= .T.



Begin Sequence



If oUAObj:GetOperation() == MODEL_OPERATION_INSERT .OR. oUAObj:GetOperation() == MODEL_OPERATION_UPDATE
	//Inserçao ou alteração

Endif


End Sequence



Return( lRet )





