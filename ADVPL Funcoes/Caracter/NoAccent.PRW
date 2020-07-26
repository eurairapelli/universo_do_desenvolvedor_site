#INCLUDE "TOTVS.CH"

User Function NoAccent()
Local cTexto	:= 'Até / Olá / É / ó / Ó / Vô / ão / ç '

MsgInfo( 'Valor: ' + cTexto + CRLF + ' Retorno: ' + FwNoAccent(cTexto), 'UniversoADVPL' )

Return( Nil )