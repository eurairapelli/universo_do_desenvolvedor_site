#INCLUDE "TOTVS.CH"

User Function MemoWrite()
Local cArquivo	:= '\MemoWrite.LOG'
Local cTexto	:= ''


cTexto	:= 'UniversoADVPL'
cTexto	+= '  ||  Texto'
cTexto	+= CRLF + '  ||  Texto

MemoWrite( cArquivo, cTexto )

Return( Nil )