#INCLUDE "TOTVS.CH"

User Function FWAlertExitPage()

FWAlertExitPage( 'Minha Mensagem', 'Universo do Desenvolvedor', {|UD| MsgInfo('Sair da Pagina','Universo do Desenvolvedor') }, {|UD| MsgInfo('Salvar','Universo do Desenvolvedor') }, {|UD| MsgInfo('Continuar Editando','Universo do Desenvolvedor') } )

Return( Nil )

