#INCLUDE "TOTVS.CH"

User Function Min2Hrs()
Local nMinutos	:= 160

MsgInfo( 'Valor: ' + cValtoChar( nMinutos ) + CRLF + 'Retorno: ' + cValtoChar( Min2Hrs( nMinutos ) ), 'UniversoADVPL' )

Return( Nil )