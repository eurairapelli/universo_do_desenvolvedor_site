#INCLUDE "TOTVS.CH"

User Function X2Nome()
Local cTabela	:= 'SA1'

dbSelectArea('SX2')
SX2->( dbSeek( cTabela ) )

MsgInfo( 'Valor: ' + cTabela + CRLF + 'Retorno: ' + X2Nome(), 'UniversoADVPL' )

Return( Nil )