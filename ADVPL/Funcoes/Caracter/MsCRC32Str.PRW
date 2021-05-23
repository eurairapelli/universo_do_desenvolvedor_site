#INCLUDE "TOTVS.CH"

User Function MsCRC32Str()
Local cTexto	:= 'UniversoADVPL '

MsgInfo( 'Valor: ' + cTexto + CRLF + ' Retorno: ' + MsCRC32Str(cTexto), 'UniversoADVPL' )

Return( Nil )