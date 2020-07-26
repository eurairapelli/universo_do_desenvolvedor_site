#INCLUDE "TOTVS.CH"

User Function ISLOWER()
Local cTexto	:= 'UniversoADVPL'

MsgInfo( 'Valor: ' + cTexto + CRLF + 'Retorno: ' + cValtoChar( ISLOWER(cTexto) ), 'UniversoADVPL' )

cTexto	:= 'universoADVPL'
MsgInfo( 'Valor: ' + cTexto + CRLF + 'Retorno: ' + cValtoChar( ISLOWER(cTexto) ), 'UniversoADVPL' )

Return( Nil )