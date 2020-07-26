#INCLUDE "TOTVS.CH"

User Function X1Def04()
Local cTabela	:= 'ACA680    02'

dbSelectArea('SX1')
SX1->( dbSeek( cTabela ) )

MsgInfo( 'Valor: ' + cTabela + CRLF + 'Retorno: ' + X1Def04(), 'UniversoADVPL' )

Return( Nil )