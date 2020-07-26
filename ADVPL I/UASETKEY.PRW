#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} UASETKEY
SetKey Personalizado

@author		Eurai Rapelli
@since 		25/03/2015

@Example	U_UASETKEY()

@See		http://www.universoadvpl.com/

@OBS		Conteúdo pode ser utilizado desde que respeite as referencias do autor.
/*/
User Function UASETKEY()
Local oDlg		:= Nil

Local oMsgBar01	:= Nil 
Local oMsgItem01:= Nil

Local oPnlItens	:= Nil

Private oFont12a	:= TFont():New("Arial",12,12,,.F.,,,,.T.,.F.)


oDlg		:= MSDialog():New( 000,000,200,300,"Atalhos com SetKey",,,.F.,,,,,,.T.,,,.T. )

oMsgBar01	:= TMsgBar():New(oDlg, "Eurai Rapelli", .F.,.F.,.F.,.F.,RGB(116,116,116),,oFont12a,.F.)
oMsgItem01	:= TMsgItem():New( oMsgBar01,'www.universoadvpl.com', 100,oFont12a,CLR_WHITE,,.T., {|| ShellExecute('OPEN','www.universoadvpl.com','','', 3 ) } )   

SetKey( VK_F2,			{ || MsgAlert( "Tecla 'F2' foi pressionada", "UniversoADVPL" ) } )
SetKey( VK_F4, 			{ || MsgAlert( "Tecla 'F4' foi pressionada", "UniversoADVPL" ) } )
SetKey( K_CTRL_A, 		{ || MsgAlert( "Tecla 'Ctrl + A' foi pressionada", "UniversoADVPL" ) } )
SetKey( K_CTRL_B, 		{ || MsgAlert( "Tecla 'Ctrl + B' foi pressionada", "UniversoADVPL" ) } )
SetKey( K_CTRL_C,		{ || MsgAlert( "Tecla 'Ctrl + C' foi pressionada", "UniversoADVPL" ) } )
SetKey( K_CTRL_F7, 		{ || MsgAlert( "Tecla 'Ctrl + F7' foi pressionada", "UniversoADVPL" ) } )
SetKey( K_SH_F1, 		{ || MsgAlert( "Tecla 'Shift + F1' foi pressionada", "UniversoADVPL" ) } )
SetKey( K_ALT_A, 		{ || MsgAlert( "Tecla 'Alt + A' foi pressionada", "UniversoADVPL" ) } )
SetKey( K_ALT_F8, 		{ || MsgAlert( "Tecla 'Alt + F8' foi pressionada", "UniversoADVPL" ) } )


oBtn01 := TButton():New( 010, 020, "Fechar"			, oDlg, {|| oDlg:End() }, 040, 040, , , .F., .T., .F., , .F., , , .F. )

oDlg:Activate(,,,.T.)  

SetKey( VK_F2,			{ || Nil } )
SetKey( VK_F4, 			{ || Nil } )
SetKey( K_CTRL_A, 		{ || Nil } )
SetKey( K_CTRL_B, 		{ || Nil } )
SetKey( K_CTRL_C,		{ || Nil } )
SetKey( K_CTRL_F7, 		{ || Nil } )
SetKey( K_SH_F1, 		{ || Nil } )
SetKey( K_ALT_A, 		{ || Nil } )
SetKey( K_ALT_F8, 		{ || Nil } ) 

Return( Nil )