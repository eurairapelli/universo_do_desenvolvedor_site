#INCLUDE "TOTVS.CH"

User Function X6Desc1()
Local cBusca	:= xFilial('SX6') + 'MV_1DUP   '

dbSelectArea('SX6')
SX6->( dbSeek( cBusca ) )

MsgInfo( 'Valor: ' + cBusca + CRLF + 'Retorno: ' + X6Desc1(), 'UniversoADVPL' )

Return( Nil )