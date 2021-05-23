#INCLUDE "TOTVS.CH"
#INCLUDE 'FILEIO.CH'

User Function FReadStr()
Local cString	:= ''
Local nHandle 	:= fOpen('\TEST.TXT' , FO_READWRITE + FO_SHARED )

If nHandle == -1
	MsgStop('Erro de abertura : FERROR ' + Str(fError(), 4), 'UniversoADVPL' )
Else
	
	cString := FReadStr( nHandle, 1024 )
	
	fclose(nHandle) // Fecha arquivo
	
Endif

  
Return( Nil )