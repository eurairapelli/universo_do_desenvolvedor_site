#INCLUDE "TOTVS.CH"

User Function MakeDir()
Local nRet := MakeDir( "\compactar" )
   
If nRet <> 0
	Conout( "Não foi possível criar o diretório. Erro: " + cValToChar( FError() ) )
Endif

Return( Nil )