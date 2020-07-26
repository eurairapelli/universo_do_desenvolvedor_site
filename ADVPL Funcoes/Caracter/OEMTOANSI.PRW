#INCLUDE "TOTVS.CH"

User Function OemToAnsi()
Local cTexto	:= 'UniversoADVPL'

MsgInfo( 'Valor: ' + cTexto + CRLF + 'Retorno: ' + OemToAnsi(cTexto), 'UniversoADVPL' )

Return( Nil )