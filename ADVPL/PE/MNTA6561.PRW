#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} MNTA6561
Carrega variaveis

@author		Eurai Rapelli
@since 		30/04/2015
/*/
User Function MNTA6561()
 
If "VISUAL" $ cCadastro
 
	MsgAlert('Visualizando','UniversoADVPL')
 
Else
 
	If INCLUI
 
		MsgAlert('Incluindo','UniversoADVPL')
 
	Endif
 
	If ALTERA
 
		MsgAlert('Alterando','UniversoADVPL')
 
	Endif
 
Endif

Return( Nil )