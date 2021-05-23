#INCLUDE "TOTVS.CH"
#INCLUDE 'FILEIO.CH'

User Function FOpen()
Local nHandle := fopen('\TEST.TXT' , FO_READWRITE + FO_SHARED )

If nHandle == -1
	MsgStop('Erro de abertura : FERROR ' + Str(fError(), 4), 'UniversoADVPL' )
Else
	MsgInfo('Arquivo aberto com sucesso.', 'UniversoADVPL')
	fclose(nHandle) // Fecha arquivo
Endif

  
Return( Nil )