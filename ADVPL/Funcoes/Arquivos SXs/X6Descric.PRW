#INCLUDE "TOTVS.CH"

User Function X6Descric()
Local cBusca	:= xFilial('SX6') + 'MV_1DUP   '

dbSelectArea('SX6')
SX6->( dbSeek( cBusca ) )

MsgInfo( 'Valor: ' + cBusca + CRLF + 'Retorno: ' + X6Descric(), 'UniversoADVPL' )

Return( Nil )