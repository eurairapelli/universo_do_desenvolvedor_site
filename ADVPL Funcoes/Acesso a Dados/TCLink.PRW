#INCLUDE "TOTVS.CH"


User Function TCLink()
Local nRet		:= 0
Local cMsg		:= ''


If ( nRet := TCLink( 'MSSQL/UAUA', '127.0.0.1', 7890 ) ) < 0
	cMsg += 'Conexão (MSSQL/UAUA): Erro ' + Str( nRet, 4 )
Else
	TcUnlink( nRet )
Endif

If ( nRet := TCLink( 'MSSQL/UNIVERSOADVPL', '127.0.0.1', 7890 ) ) < 0
	cMsg += 'Conexão (MSSQL/UNIVERSOADVPL): Erro ' + Str( nRet, 4 )
Else
	TcUnlink( nRet )
Endif


MsgInfo( cMsg, 'UniversoADVPL' )


Return( Nil )