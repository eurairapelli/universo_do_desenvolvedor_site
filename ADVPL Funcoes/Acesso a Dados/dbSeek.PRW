#INCLUDE "TOTVS.CH"

User Function dbSeek()

dbSelectArea('SA1')

If SA1->( dbSeek( xFilial('SA1')  + '000001' + '0001' ) )

	MsgInfo( 'Encontrou', 'UniversoADVPL' )

Endif

Return( Nil )