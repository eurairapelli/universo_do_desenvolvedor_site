#INCLUDE "TOTVS.CH"

User Function SubStr()
Local cTexto	:= 'UniversoADVPL'

MsgInfo( 'Valor: ' + cTexto + CRLF + 'Retorno: ' + SubStr( cTexto, 2, 4 ), 'UniversoADVPL' )

Return( Nil )