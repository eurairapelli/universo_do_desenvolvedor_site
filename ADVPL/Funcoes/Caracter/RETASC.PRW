#INCLUDE "TOTVS.CH"

User Function RetAsc()
Local cTexto	:= '200'

MsgInfo( 'Valor: ' + cTexto ;
	+  CRLF + 'Retorno: ' + RetAsc(cTexto,2,.T.) ;
	+  CRLF + 'Retorno: ' + RetAsc(cTexto,3,.T.) ;
	+  CRLF + 'Retorno: ' + RetAsc(cTexto,2,.F.) ;
	+  CRLF + 'Retorno: ' + RetAsc(cTexto,3,.F.) ;
	 , 'UniversoADVPL' )

Return( Nil )