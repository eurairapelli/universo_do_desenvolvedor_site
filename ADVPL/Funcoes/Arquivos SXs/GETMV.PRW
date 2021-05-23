#INCLUDE "TOTVS.CH"

User Function GetMV()
Local cBusca	:= 'MV_1DUP'

MsgInfo( 'Valor: ' + cBusca + CRLF + 'Retorno: ' + GetMV(cBusca), 'UniversoADVPL' )

cBusca	:= 'MV_XXX'

MsgInfo( 'Valor: ' + cBusca + CRLF + 'Retorno: ' + cValtoChar( GetMV(cBusca) ), 'UniversoADVPL' )

MsgInfo( 'Valor: ' + cBusca + CRLF + 'Retorno: ' + cValtoChar( GetMV(cBusca,.F.,'ValorPadrão') ), 'UniversoADVPL' )

MsgInfo( 'Valor: ' + cBusca + CRLF + 'Retorno: ' + cValtoChar( GetMV(cBusca,.T.) ), 'UniversoADVPL' )


Return( Nil )