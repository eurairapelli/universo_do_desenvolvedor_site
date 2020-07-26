#INCLUDE "TOTVS.CH"

User Function MsCRC32()
Local cTexto	:= 'UniversoADVPL '

MsgInfo( 'Valor: ' + cTexto + CRLF + ' Retorno: ' + cValtoChar( MsCRC32(cTexto) ), 'UniversoADVPL' )

Return( Nil )