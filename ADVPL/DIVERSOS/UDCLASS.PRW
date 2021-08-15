#INCLUDE "TOTVS.CH"


User Function UDCLASS()
oUDCLASS := UDCLASS():New()
oUDCLASS:Alert( 'Minha Mensagem' )

Return(Nil)

/*/{Protheus.doc} UDCLASS
Classe generica. Funções para usos diversos..

@type		class
@author		Eurai Rapelli
/*/
	Class UDCLASS


		Method New() Constructor

		Method Alert( cMen, cTit )


	EndClass

/*/{Protheus.doc} New
Metodo New

@type		method
@author		Eurai Rapelli
/*/
Method New() Class UDCLASS
Return( Self )

/*/{Protheus.doc} Alert
Mostra mensagem

@type		method
@author		Eurai Rapelli
/*/
Method Alert( cMen, cTit ) Class UDCLASS
	Default cMen        := ''
	Default cTit        := 'Universo do Desenvoledor'

	MsgAlert(cMen,cTit)

Return( Nil )
