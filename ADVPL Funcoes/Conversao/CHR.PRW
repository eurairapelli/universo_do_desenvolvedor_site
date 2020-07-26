#INCLUDE "TOTVS.CH"

User Function CHR()
Local nAscII	:= 65

MsgInfo( 'Valor: ' + cValtoChar(nAscII) + CRLF + 'Retorno: ' + CHR(nAscII), 'UniversoADVPL' )

Return( Nil )