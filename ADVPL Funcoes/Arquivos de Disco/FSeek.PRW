#INCLUDE "TOTVS.CH"
#INCLUDE "FILEIO.CH"

User Function FSeek()
Local nHandle	:= 0
Local nTamanho	:= 0

If ( nHandle := FOPEN("C:\TEMP\TST.TXT") ) >= 0 
	nTamanho := FSEEK(nHandle, 0, FS_END) 
	FSEEK(nHandle, 0) 
	FCLOSE(nHandle)
Else
	MsgStop( "Erro abrir Arquivo", 'UniversoADVPL' )
Endif

Return( Nil )