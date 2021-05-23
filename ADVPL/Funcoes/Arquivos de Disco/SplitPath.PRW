#INCLUDE "TOTVS.CH"

User Function SplitPath()
Local cDrive	:= ''
Local cDir		:= ''
Local cNome		:= ''
Local cExt		:= ''
Local aArq		:= {}

Local cMensagem	:= ''

aAdd(aArq,'C:\TEMP\arquivo.LOG')
aAdd(aArq,'\path\update\arquivo.LOG')

For nI := 1 to Len(aArq)
   
	SplitPath( aArq[nI], @cDrive, @cDir, @cNome, @cExt )
	cMensagem += aArq[nI] + ' => ['+cDrive+'] ['+ cDir +'] ['+ cNome +'] ['+ cExt + ']' + CRLF
   
Next nI

MsgInfo( cMensagem, 'UniversoADVPL' )

Return( Nil )