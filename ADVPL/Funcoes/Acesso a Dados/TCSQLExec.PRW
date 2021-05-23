#INCLUDE "TOTVS.CH"

User Function TCSQLExec()
Local cSQL 	:= "" 

If !TCIsConnected()
	MsgAlert( "Sem conexão com o banco de dados", 'UniversoADVPL' )
	Return( Nil )
Endif  

If !"MSSQL" $ TCGetDB()
	MsgStop( TCGetDB() + " - Nao tratado!", 'UniversoADVPL' )
	Return( Nil )
Endif

cSQL := "INSERT INTO"
If TCSQLExec(cSQL) < 0
	MsgStop( "TCSQLError() " + TCSQLError(), 'UniversoADVPL' )
	Return( Nil )
Else
	MsgInfo( "Executado com Sucesso!!!", 'UniversoADVPL' )
Endif


Return( Nil )