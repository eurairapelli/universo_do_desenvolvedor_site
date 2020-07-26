#INCLUDE "TOTVS.CH"

User Function Directory()
Local aFiles 	:= {}
Local nX		:= 0
 
aFiles := Directory("C:\TEMP\*.*", "D")
For nX := 1 to Len( aFiles )
	Conout('Arquivo: ' + aFiles[nX,1] + ' - Size: ' + AllTrim(Str(aFiles[nX,2])) )
Next nX
  
Return( Nil )