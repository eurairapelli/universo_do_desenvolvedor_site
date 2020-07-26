#INCLUDE "TOTVS.CH"

User Function Day()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) + CRLF + 'Retorno: ' + Str( Day( Date() ) ), 'UniversoADVPL' )

Return( Nil )