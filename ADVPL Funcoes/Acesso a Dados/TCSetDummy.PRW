#INCLUDE "TOTVS.CH"


User Function TCSetDummy()
Local cTabela		:= ''

Local nI			:= 0
Local nCount		:= 100

TCSetDummy( .T. ) //Abrir + Rapido 


For nI := 1 to nCount  

	cTabela := 'TABELA' + Trim( Str( nI, 10, 0 ) )  
	dbUseArea( .T.,'TOPCONN', cTabela, cTabela, .T., .F. )
	
Next nI


TCSetDummy( .F. )


Return( Nil )