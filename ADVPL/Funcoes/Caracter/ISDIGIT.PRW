#INCLUDE "TOTVS.CH"

User Function ISDIGIT()
Local cTexto	:= 'UniversoADVPL'

MsgInfo( 'Valor: ' + cTexto + CRLF + 'Retorno: ' + cValtoChar( ISDIGIT(cTexto) ), 'UniversoADVPL' )

cTexto	:= '12UniversoADVPL'
MsgInfo( 'Valor: ' + cTexto + CRLF + 'Retorno: ' + cValtoChar( ISDIGIT(cTexto) ), 'UniversoADVPL' )

Return( Nil )