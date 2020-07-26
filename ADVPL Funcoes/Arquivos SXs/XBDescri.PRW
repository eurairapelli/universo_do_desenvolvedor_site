#INCLUDE "TOTVS.CH"

User Function XBDescri()
Local cBusca	:= 'SA1   101DB'

dbSelectArea('SXB')
SXB->( dbSeek( cBusca ) )

MsgInfo( 'Valor: ' + cBusca + CRLF + 'Retorno: ' + XBDescri(), 'UniversoADVPL' )

Return( Nil )