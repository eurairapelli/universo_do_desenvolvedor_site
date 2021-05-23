#INCLUDE "TOTVS.CH"

User Function FListzip()
Local nRet := 10
Local aRet := FListZip("\arquivos.zip",nRet)

If nRet == 0
	VarInfo("aRet",aRet) // Mostra no console o conteúdo do array
Else
	Conout("Erro: " + cValTochar(nRet) )
Endif
  
Return( Nil )