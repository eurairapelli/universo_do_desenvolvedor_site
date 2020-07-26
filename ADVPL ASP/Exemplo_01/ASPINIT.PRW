#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} ASPINIT
ASP Conexão

@type		function
@author		Eurai Rapelli
@since 		2019.02.11
/*/
User Function ASPINIT()
Local nTopHnd	:= 00
/*
SET DATE BRITISH
SET CENTURY ON

nTopHnd := TCLink()
If nTopHnd < 0 
	Conout("ASPINIT - Falha de conexao "+cValToChar(nTopHnd))
	Return( .F. )
Endif

SET DELETED ON

Conout("ASPINIT - Thread Advpl ASP ["+cValToChar(ThreadID())+"] Iniciada")
*/
Return( .T. )



