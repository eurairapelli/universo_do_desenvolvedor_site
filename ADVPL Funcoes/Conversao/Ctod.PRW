#INCLUDE "TOTVS.CH"

User Function Ctod()
Local cData	:= '18/07/15'

MsgInfo( 'Valor: ' + cData + CRLF + 'Retorno: ' + cValtoChar( Ctod( cData ) ), 'UniversoADVPL' )

Return( Nil )