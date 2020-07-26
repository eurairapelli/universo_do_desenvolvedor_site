#INCLUDE "TOTVS.CH"

User Function ISALPHA()
Local cTexto	:= 'UniversoADVPL'

MsgInfo( 'Valor: ' + cTexto + CRLF + 'Retorno: ' + cValtoChar( ISALPHA(cTexto) ), 'UniversoADVPL' )

cTexto	:= '12UniversoADVPL'
MsgInfo( 'Valor: ' + cTexto + CRLF + 'Retorno: ' + cValtoChar( ISALPHA(cTexto) ), 'UniversoADVPL' )

Return( Nil )