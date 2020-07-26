#INCLUDE "TOTVS.CH"

User Function Dtoc()
Local dData	:= Date()

MsgInfo( 'Valor: ' + cValtoChar( dData ) + CRLF + 'Retorno: ' + Dtoc( dData ), 'UniversoADVPL' )

Return( Nil )