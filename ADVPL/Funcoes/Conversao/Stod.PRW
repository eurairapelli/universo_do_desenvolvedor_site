#INCLUDE "TOTVS.CH"

User Function Stod()
Local cData	:= '20150715'

MsgInfo( 'Valor: ' + cData + CRLF + 'Retorno: ' + Dtoc( Stod( cData ) ), 'UniversoADVPL' )

Return( Nil )