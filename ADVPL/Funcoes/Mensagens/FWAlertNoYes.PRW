#INCLUDE "TOTVS.CH"

User Function FWAlertNoYes()

If FWAlertNoYes( 'Confirma?', 'Universo do Desenvolvedor' )

	MsgInfo( 'Sim', 'Universo do Desenvolvedor' )

Else

	MsgInfo( 'Não', 'Universo do Desenvolvedor' )

Endif

cMsg := '<b>Negrito</b>'
cMsg += '<br>'
cMsg += '<i>Italico</i>'
cMsg += '<br>'
cMsg += '<font color="#FF00FF">Mensagem 2</font>'
cMsg += '<br>'
cMsg += '<font color="#0FFF00" size="20">Mensagem 2</font>'
cMsg += '<br>'
cMsg += '<font color="#0F0F00" size="50">Mensagem 3</font>'
FWAlertNoYes( cMsg, 'Universo do Desenvolvedor' )

Return( Nil )
