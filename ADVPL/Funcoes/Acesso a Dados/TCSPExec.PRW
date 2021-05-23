#INCLUDE "TOTVS.CH"

User Function TCSPExec()
Local aResult := {}

aResult := TCSPEXEC( "PROCEDURE", 'PARAM1', 'PARAM2' )

If Empty( aResult )
	Conout('Erro na execução da Stored Procedure : ' + TcSqlError() )
Else
	VarInfo( 'aResult', aResult )
Endif

Return( Nil )