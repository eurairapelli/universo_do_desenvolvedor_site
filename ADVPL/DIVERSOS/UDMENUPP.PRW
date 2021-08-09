#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} UDMENUPP
Menu POP

@type		function
@author		Eurai Rapelli
@since 		2021.08.07
/*/
User Function UDMENUPP()
Local oDlg		:= Nil
Local oBar01	:= Nil 
Local oBtnBmp01	:= Nil   
Local oMsgBar01	:= Nil 
Local oMsgItem01:= Nil   


Private oBrowse		:= Nil
Private oPnlItens	:= Nil
Private aBrowse		:= {{Space(255),Space(255)}}

Private nForeCor	:= CLR_GRAY
Private nBackCor	:= CLR_WHITE

Private nCols  		:= 2

Private oFont12a	:= TFont():New("Arial",12,12,,.F.,,,,.T.,.F.)

oDlg		:= MSDialog():New( 000,000,500,1000,"Universo do Desenvolvedor - Exemplo de Menu POP",,,.F.,,,,,,.T.,,,.T. )
oDlg:lMaximized	:= .T.

oMsgBar01	:= TMsgBar():New(oDlg, "Eurai Rapelli", .F.,.F.,.F.,.F.,RGB(116,116,116),,oFont12a,.F.)
oMsgItem01	:= TMsgItem():New( oMsgBar01,'www.udesenv.com.br', 100,oFont12a,CLR_WHITE,,.T., {|| ShellExecute('OPEN','www.udesenv.com.br','','', 3 ) } )   



oPnlItens		:= TPanel():NEW( 000, 000, "", oDlg, , .T., , CLR_BLUE, , 000, 000, .T., .T.)
oPnlItens:Align	:= CONTROL_ALIGN_ALLCLIENT

oBrowse 				:= TCBrowse():New( 01 , 01, 260, 156,,{"A"},{100},oPnlItens,,,,,{||},,,,,,,.F.,,.T.,,.F.,,, )
oBrowse:SetArray(aBrowse)// Principais commandos
oBrowse:AddColumn( TcColumn():New('A',&(" { || aBrowse[oBrowse:nAt,01] } "),,{|| nForeCor },{||nBackCor }, , /*100*/) )
oBrowse:AddColumn( TcColumn():New('B',&(" { || aBrowse[oBrowse:nAt,02] } "),,{|| nForeCor },{||nBackCor }, , /*100*/) )
oBrowse:Align			:= CONTROL_ALIGN_ALLCLIENT
oBrowse:bRClicked		:= { |o,x,y| MenuPop(o,x,y) } 
oBrowse:LADJUSTCOLSIZE	:= .T.


oBar01		:= TBar():New( oDlg,25,35,.T.,,,'fw_degrade_menu',.T. )
oBtnBmp01 	:= TBtnBmp2():New( 000, 000, 035, 025, 'FINAL' ,,,,{|| nOpc:=00, oDlg:End() }, oBar01,'Sair',,.F.,.F. )


oDlg:Activate(,,,.T.)  

Return( Nil )

/*/{Protheus.doc} MenuPop
Monta Menu, chama na tela

@author		Eurai Rapelli
@since 		17.12.2012

@Example	MenuPop()
/*/
Static Function MenuPop(o,x,y)                               
Local oMenuItem	:= {}

MENU oMenu POPUP

aAdd( oMenuItem, MenuAddItem("Adiciona XXXXX"		,,, .T.,,,, oMenu,{ || Alert('funcao de XXXXX') },,,,,{|| .T.} ) )

ENDMENU

oMenu:Activate( Iif( x > oBrowse:NCLIENTWIDTH, oBrowse:NCLIENTWIDTH/2, x ) , 21 + oBrowse:nRowPos, o )

Return( Nil )

