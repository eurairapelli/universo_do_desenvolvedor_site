#INCLUDE "TOTVS.CH"

User Function ISUPPER()
Local cTexto	:= 'UniversoADVPL'

MsgInfo( 'Valor: ' + cTexto + CRLF + 'Retorno: ' + cValtoChar( ISUPPER(cTexto) ), 'UniversoADVPL' )

cTexto	:= 'universoADVPL'
MsgInfo( 'Valor: ' + cTexto + CRLF + 'Retorno: ' + cValtoChar( ISUPPER(cTexto) ), 'UniversoADVPL' )

Return( Nil )