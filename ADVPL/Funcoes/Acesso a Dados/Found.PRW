#INCLUDE "TOTVS.CH"

User Function Found()

dbSelectArea('SA1')

SA1->( dbSeek( xFilial('SA1')  + '000001' + '0001' ) )

MsgInfo( cValtoChar( Found() ), 'UniversoADVPL' )


Return( Nil )