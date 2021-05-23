#INCLUDE "TOTVS.CH"
#INCLUDE "FILEIO.CH"

User Function FT_FLastRec()
Local cLine		:= ''

Local nHandle	:= 0
Local nLast		:= 0
Local nRecno	:= 0

nHandle := FT_FUse("C:\TEMP\TST.TXT")
If nHandle == -1  // Se houver erro de abertura abandona processamento
	Return( Nil )
Endif

FT_FGoTop()// Posiciona na primeira linha

nLast := FT_FLastRec() // Retorna o número de linhas do arquivo
MsgAlert( cValtoChar( nLast ), 'UniversoADVPL' )

Do While !FT_FEOF()
	cLine  := FT_FReadLn() // Retorna a linha corrente  
	nRecno := FT_FRecno()  // Retorna o recno da linha  
	MsgAlert( "Linha: " + cLine + " - Recno: " + StrZero(nRecno,3), 'UniversoADVPL' ) )    
	FT_FSKIP() // Pula para próxima linha  
EndDo

FT_FUSE() // Fecha o arquivo

Return( Nil )