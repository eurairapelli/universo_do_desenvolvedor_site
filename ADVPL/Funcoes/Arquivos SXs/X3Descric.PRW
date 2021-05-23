#INCLUDE "TOTVS.CH"

User Function X3Descric()
Local cCampo	:= 'A1_PESSOA '

dbSelectArea('SX3')
SX3->( dbSetOrder(2) )
SX3->( dbSeek( cCampo ) )

MsgInfo( 'Valor: ' + cCampo + CRLF + 'Retorno: ' + X3Descric(), 'UniversoADVPL' )

Return( Nil )