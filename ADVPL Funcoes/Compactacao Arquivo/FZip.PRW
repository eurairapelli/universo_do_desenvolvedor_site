#INCLUDE "TOTVS.CH"

User Function FZip()
Local nRet		:= 0
Local aFiles 	:= {} 

aAdd( aFiles, "\path\calculo.csv" )
aAdd( aFiles, "\path\calculo.txt" )
  
nRet := FZip("\arquivos.zip",aFiles)
If nRet <> 0
	Conout("Não foi possível criar o arquivo zip")
Else
	Conout("Arquivo zip criado com sucesso")
Endif

  
Return( Nil )