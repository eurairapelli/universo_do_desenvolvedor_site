#INCLUDE "TOTVS.CH"
#INCLUDE 'FILEIO.CH'

User Function FRead()
Local cString	:= ''
Local nHandle 	:= fOpen('\TEST.TXT' , FO_READWRITE + FO_SHARED )

If nHandle == -1
	MsgStop('Erro de abertura : FERROR ' + Str(fError(), 4), 'UniversoADVPL' )
Else
	
	cString := FRead( nHandle, cString, 1024 )
	
	fclose(nHandle) // Fecha arquivo
	
Endif

  
Return( Nil )