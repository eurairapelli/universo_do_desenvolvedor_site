#INCLUDE "TOTVS.CH"

User Function FERASE()
Local nHandle	:= 0

nHandle := FCREATE( "\TEST.TXT" )
If !FCLOSE(nHandle)
	Conout( "Erro ao fechar arquivo, erro numero: ", FERROR() )
Endif

If FERASE("\TEST.TXT") == -1      
	MsgStop('Falha na deleção do Arquivo','UniversoADVPL')
Endif

Return( Nil )