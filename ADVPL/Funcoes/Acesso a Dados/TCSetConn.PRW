#INCLUDE "TOTVS.CH"


User Function TCSetConn()
Local cMsg		:= ''
Local nConn		:= 0

If ( nConn := TCLink( 'MSSQL/UNIVERSOADVPL_P12', '127.0.0.1', 7890 ) ) < 0
	
	MsgInfo( 'Conexão (MSSQL/UNIVERSOADVPL_P12): Erro ' + Str( nConn, 4 ), 'UniversoADVPL' )
	
Else

	TCSetConn( 0 )
	Conout( "Banco: " + TCGetDB() )//Banco ERP

	TCSetConn( nConn )
	Conout( "Banco: " + TCGetDB() )//Banco Link

	
	TCSetConn( 0 )//Banco ERP
	TCUnlink( nConn )//Desconecta do Banco Link
	
Endif


Return( Nil )