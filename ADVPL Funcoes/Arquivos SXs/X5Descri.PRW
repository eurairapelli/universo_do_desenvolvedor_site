#INCLUDE "TOTVS.CH"

User Function X5Descri()
Local cBusca	:= xFilial('SX5') + '0010    '

dbSelectArea('SX5')
SX5->( dbSeek( cBusca ) )

MsgInfo( 'Valor: ' + cBusca + CRLF + 'Retorno: ' + X5Descri(), 'UniversoADVPL' )

Return( Nil )