#INCLUDE "TOTVS.CH"

User Function X1Def01()
Local cTabela	:= 'ACA680    02'

dbSelectArea('SX1')
SX1->( dbSeek( cTabela ) )

MsgInfo( 'Valor: ' + cTabela + CRLF + 'Retorno: ' + X1Def01(), 'UniversoADVPL' )

Return( Nil )