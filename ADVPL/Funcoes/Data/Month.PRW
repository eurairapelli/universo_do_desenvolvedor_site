#INCLUDE "TOTVS.CH"

User Function Month()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) + CRLF + 'Retorno: ' + Str( Month( Date() ) ), 'UniversoADVPL' )

Return( Nil )