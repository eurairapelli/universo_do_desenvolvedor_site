#INCLUDE "TOTVS.CH"

User Function StrTran()
Local cTexto	:= 'UniversoADVPL'

MsgInfo( 'Valor: ' + cTexto + CRLF + 'Retorno: ' + StrTran( cTexto, 'Universo', 'UA' ), 'UniversoADVPL' )

Return( Nil )