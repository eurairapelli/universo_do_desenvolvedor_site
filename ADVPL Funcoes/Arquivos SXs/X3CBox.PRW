#INCLUDE "TOTVS.CH"

User Function X3CBox()
Local cCampo	:= 'A1_PESSOA '

dbSelectArea('SX3')
SX3->( dbSetOrder(2) )
SX3->( dbSeek( cCampo ) )

MsgInfo( 'Valor: ' + cCampo + CRLF + 'Retorno: ' + X3CBox(), 'UniversoADVPL' )

Return( Nil )