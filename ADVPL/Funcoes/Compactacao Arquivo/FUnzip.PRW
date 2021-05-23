#INCLUDE "TOTVS.CH"
#INCLUDE "FILEIO.CH"

User Function FUnzip()
Local nRet	:= 0

nRet := FUnZip("\arquivos.zip","\",)
If nRet <> 0
	Conout("Não foi possível descompactar")
Else
	Conout("Arquivo descompactado com sucesso")
Endif

Return( Nil )