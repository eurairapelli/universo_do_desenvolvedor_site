#INCLUDE "TOTVS.CH"

User Function Hrs2Min()
Local cHora	:= '2.3'

MsgInfo( 'Valor: ' + cValtoChar( cHora ) + CRLF + 'Retorno: ' + cValtoChar( Hrs2Min( cHora ) ), 'UniversoADVPL' )

Return( Nil )