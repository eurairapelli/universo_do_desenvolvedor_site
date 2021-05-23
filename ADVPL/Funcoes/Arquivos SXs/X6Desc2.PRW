#INCLUDE "TOTVS.CH"

User Function X6Desc2()
Local cBusca	:= xFilial('SX6') + 'MV_1DUP   '

dbSelectArea('SX6')
SX6->( dbSeek( cBusca ) )

MsgInfo( 'Valor: ' + cBusca + CRLF + 'Retorno: ' + X6Desc2(), 'UniversoADVPL' )

Return( Nil )