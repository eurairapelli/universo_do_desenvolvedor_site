#INCLUDE "TOTVS.CH"

User Function msSeek()

dbSelectArea('SA1')

If SA1->( msSeek( xFilial('SA1')  + '000001' + '0001' ) )

	MsgInfo( 'Encontrou', 'Universo do Desenvolvedor' )
Else
	MsgInfo( 'NAO Encontrou', 'Universo do Desenvolvedor' )

Endif

Return( Nil )
