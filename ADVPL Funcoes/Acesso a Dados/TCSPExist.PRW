#INCLUDE "TOTVS.CH"

User Function TCSPExist()
Local cProc		:= 'PROCEDURE'
Local aResult 	:= {}

If TCSPExist( cProc )

	aResult := TCSPEXEC( cProc, 'PARAM1', 'PARAM2' )
	
	If Empty( aResult )
		Conout('Erro na execução da Stored Procedure : ' + TCSQLError() )
	Else
		VarInfo( 'aResult', aResult )
	Endif
	
Endif

Return( Nil )