#INCLUDE "TOTVS.CH"

User Function Dtos()
Local dData	:= Date()

MsgInfo( 'Valor: ' + cValtoChar( dData ) + CRLF + 'Retorno: ' + Dtos( dData ), 'UniversoADVPL' )

Return( Nil )