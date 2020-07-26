#INCLUDE "TOTVS.CH"
#INCLUDE 'FILEIO.CH'

User Function fWrite()
Local cString	:= ''
Local nHandle 	:= fOpen('\TEST.TXT' , FO_READWRITE + FO_SHARED )

If nHandle == -1
	MsgStop('Erro de abertura : FERROR ' + Str(fError(), 4), 'UniversoADVPL' )
Else
	
	FSeek(nHandle, 0, FS_END)			// Posiciona no fim do arquivo
	FWrite(nHandle, "Nova Linha", 10) 	// Insere texto no arquivo
	
	fclose(nHandle) // Fecha arquivo
	
Endif

  
Return( Nil )