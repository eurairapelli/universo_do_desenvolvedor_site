#include "TOTVS.CH"
#define BR Chr(10)

Function u_setCSS()
local oFtConsolas := TFont():New("Consolas",,020,,.F.,,,,,.F.,.F.)
local nObj := 0
local cLibQt

private cCSS := ""
private oMainObject := NIL 
private pn01, pn02
private oMainFolder, oMainTabBar, oMainSplit, oMainBrowse
private aMainBrowse := { {.T.,'CLIENTE 001','RUA CLIENTE 001',111.11},;
                         {.F.,'CLIENTE 002','RUA CLIENTE 002',222.22},;
                         {.T.,'CLIENTE 003','RUA CLIENTE 003',333.33} }

// Lista de componentes
private aComps	:= {"TButton","TCBrowse","TCheckBox","TComboBox","TFolder",;
					"TGet","TGroup","TListBox","TMeter","TMsgBar",;
					"TMultiGet","TPanel","TPanelCSS","TRadMenu","TSay",;
					"TSimpleEditor","TSlider","TSpinBox","TSplitter","TTree"}
					
// Lista de componentes equivalentes do Qt			
private aCompsQt:= {"QPushButtom","QTableWidget","QCheckBox","QComboBox","QTabBar",;
					"QLineEdit","QGroupBox","QListWidget","QProgressBar","QStatusBar",;
					"QTextEdit","QLabel","QFrame","QRadioButton","QLabel",;
					"QTextEdit","QSlider","QSpinBox","QSplitter","QTreeWidget"}
		
// Captura versao da LIB do Qt no qual este SmartClient fon compilado
GetRemoteType(@cLibQt)
		
	aScreenRes := getScreenRes()
	DEFINE DIALOG oDlg TITLE "SetCSS - Paginas de estilo em AdvPL - " + cLibQt FROM 0,0 TO aScreenRes[2]-100,aScreenRes[1]-20 PIXEL
	oDlg:setCSS("TButton{ background-color: #EDF0F1;}")
	
		// Sppliter ocupara toda tela
		spDiv := TSplitter():New( 01,01,oDlg,260,184, 1 ) // Orientacao Vertical
		spDiv:setCSS("QSplitter::handle:vertical{background-color: #0080FF; height: 4px;}")
		spDiv:align := CONTROL_ALIGN_ALLCLIENT
	
		// Painel superior
		pnTop := TPanel():New(0,0,,spDiv,,,,,,60,60)
	
		// Painel inferior
		pnCSS := TPanel():New(0,0,,spDiv,,,,,,60,80)
		oCSS := TMultiGet():New(0,0,{|u|If(PCount()==0,cCSS,cCSS:=u)},pnCSS,0,0,oFtConsolas,.T., 0, 14803425,,.T.,,.F.,,.F.,.F.,.F.,,,.F.,, )
		oCSS:align := CONTROL_ALIGN_ALLCLIENT
	
		// Rodape para o botao de aplicacao/limpeza de CSS
		pnApplyCSS := TPanel():New(0,0,,pnCSS,,,,,,0,23)
		btApplyCSS := TButton():New( 0, 0, "&Aplica CSS", pnApplyCSS, {||applyCSS(oMainObject,cCSS)}, 037, 015,,,.F.,.T.,.F.,,.F.,,,.F. )
		btCleanCSS := TButton():New( 0, 0, "&Limpa CSS" , pnApplyCSS, {||cleanCSS(oMainObject)}, 037, 015,,,.F.,.T.,.F.,,.F.,,,.F. )
		pnApplyCSS:align := CONTROL_ALIGN_BOTTOM
		btApplyCSS:align := CONTROL_ALIGN_RIGHT
		btCleanCSS:align := CONTROL_ALIGN_RIGHT
		
		// Combo com os objetos
		TSay():New(4,4,{||'Escolha o objeto:'},pnApplyCSS,,,,,,.T.,,,90,16)
		cbObj := TComboBox():New(04,50,{|u|If(PCount()==0,nObj,nObj:=u)},aComps,;
		          100, 010, pnApplyCSS,,{|o| changeObj(o)},, 0, 16777215,.T.,,,.F.,,.F.,,, ,"nObj" )
		cbObj:setCSS("QComboBox{font-size: 12px;}")		
		
		// -----------------------------------------------------
		// Este conjunto de componentes nao pode ser excluido apos criado,  
		// por isso serao mantidos "escondidos" ate que sejam necessarios
		// -----------------------------------------------------
		// TCBrowse
		oMainBrowse := TCBrowse():New( 4,4,260,90,, {'Codigo','Nome','Valor'},{20,50,50,50}, pnTop,,,,,{||},,,,,,,.F.,,.T.,,.F.,,, )
		oMainBrowse:hide()
		oMainBrowse:SetArray(aMainBrowse)
		oMainBrowse:bLine := {||{ aMainBrowse[oMainBrowse:nAt,02],;
								  aMainBrowse[oMainBrowse:nAt,03],;
								  Transform(aMainBrowse[oMainBrowse:nAT,04],'@E 99,999,999,999.99') } }
		// TFolder
		oMainFolder := TFolder():New( 4,4,{"Aba01","Aba02","Aba03"},,pnTop,,,,.T.,,260,100 )						
		oMainFolder:hide()
		
		// TMsgBar
		oMainTabBar := TMsgBar():New(oDlg,"Iten",.F.,.F.,.F.,.F.)//, RGB(116,116,116),,,.F.)
	    oTMsgItem1  := TMsgItem():New( oMainTabBar,'Descrição do item', 140,,,,.T., {||} )
	    oMainTabBar:hide()
	    
		oMainSplit := TSplitter():New( 4,4,pnTop,180,80, 1 )
		pn01 := TPanel():New(0,0,,oMainSplit,,,,,CLR_YELLOW,60,60)
		pn02 := TPanel():New(0,0,,oMainSplit,,,,,CLR_HGRAY,60,80)
		oMainSplit:hide()
		// -----------------------------------------------------
								 
	oDlg:Activate()

Return

// ------------------------------------
// Aplica CSS
// ------------------------------------
static function applyCSS(o,css)
	do case
	case oMainBrowse:lVisible
		oMainBrowse:SetCss(css)
	case oMainFolder:lVisible
		oMainFolder:SetCss(css)
	case oMainTabBar:lVisible
		oMainTabBar:SetCss(css)
	case oMainSplit:lVisible
		oMainSplit:SetCss(css)
	otherwise
		o:SetCss(css)
	end case
return

// ------------------------------------
// Limpa CSS
// ------------------------------------
static function cleanCSS(o)
	do case
	case oMainBrowse:lVisible
		oMainBrowse:SetCss("dummy")
	case oMainFolder:lVisible
		oMainFolder:SetCss("dummy")
	case oMainTabBar:lVisible
		oMainTabBar:SetCss("dummy")
	case oMainSplit:lVisible
		oMainSplit:SetCss("dummy")
	otherwise
		o:SetCss("dummy")
	end case
return

// ------------------------------------
// Altera componente para pintura
// ------------------------------------
static function changeObj(o)
local comp 	 := aComps[o:nAt] 	// Componente selecionado
local compQt := aCompsQt[o:nAt] // Componente equivalente
	
	// Esconde Componentes qeu nao podem ser excluidos
	if oMainBrowse:lVisible .or. oMainFolder:lVisible .or. oMainTabBar:lVisible .or. oMainSplit:lVisible
		cleanCSS()
		oMainBrowse:hide()
		oMainFolder:hide()
		oMainTabBar:hide()
		oMainSplit:hide()
	else
		// Apaga objeto testado anterior
		if oMainObject != NIL		
			FreeObj(oMainObject)
			oMainObject := NIL
		endif
	endif	
	
	// Exibe componente equivalente do Qt
	cCSS := "/* " +comp+ " => " +compQt+ " */";

	do case
	case comp == "TButton"
		oMainObject := TButton():New( 4,4,"Botão para teste",pnTop,{||},100,15,,,.F.,.T.,.F.,,.F.,,,.F. )
		cCSS +=	 BR+"QPushButton {";
				+BR+"  color: #FFFFFF; /*Cor da fonte*/";
				+BR+"  border: 2px solid #494429; /*Cor da borda*/";
				+BR+"  border-radius: 6px; /*Arrerondamento da borda*/";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                                    stop: 0 #804000, stop: 1 #FAC08F); /*Cor de fundo*/";
				+BR+"  min-width: 80px; /*Largura minima*/";
				+BR+"}";
				+BR+"/* Acoes quando pressionado botao, aqui mudo a cor de fundo */";
				+BR+"QPushButton:pressed {";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                                    stop: 0 #FAC08F, stop: 1 #804000);";
				+BR+"}"
	
	case comp == "TCBrowse"
		oMainBrowse:show()
		cCSS +=	 BR+"/* Componentes que herdam da TCBrowse:";
				+BR+"   BrGetDDb, MsBrGetDBase,MsSelBr, TGridContainer, TSBrowse, TWBrowse */";
				+BR+"QTableWidget {";
				+BR+"  gridline-color: #632423; /*Cor da grade*/";
				+BR+"  color: #974806; /*Cor da fonte*/";
				+BR+"  font-size: 12px; /*Tamanho da fonte*/";
				+BR+"  background: #FFFFAF; /*Cor do fundo da Grid*/";
				+BR+"  alternate-background-color: #D7E3BC; /*Cor do zebrado*/";
				+BR+"  selection-background-color: qlineargradient(x1: 0, y1: 0, x2: 0.8, y2: 0.8,";
				+BR+"                              stop: 0 #A76462, stop: 1 #E5B9B7); /*Cor da linha selecionada*/";
				+BR+"}";
				+BR+"/* Acoes quando a celula for selecionada, aqui mudo a cor de fundo */";
				+BR+"QTableView:item:selected:focus {background-color: #FBD5B5} /*Cor da celula selecionada*/"
		
	case comp == "TCheckBox"
		oMainObject := TCheckBox():New(4,4,'CheckBox',{||},pnTop,100,210,,,,,,,,.T.,,,)
		cCSS +=	 BR+"QCheckBox {";
				+BR+"  color: #3E97EB; /*cor da fonte*/";
				+BR+"  font-size: 24px; /*tamanho da fonte*/";
				+BR+"}";
				+BR+"/*Formatacao do indicador do checkbox*/";
				+BR+"QCheckBox::indicator {";
				+BR+"  width: 23px; /*largura e altura*/";
				+BR+"  height: 23px;";
				+BR+"}";
				+BR+"/*Quando selecionado*/				";
				+BR+"QCheckBox::indicator:checked {";
				+BR+"    image: url(c:/garbage/check_on.png);";
				+BR+"}";
				+BR+"/*Quando nao selecionado*/				";
				+BR+"QCheckBox::indicator::unchecked {";
				+BR+"    image: url(c:/garbage/check_off.png);";
				+BR+"}"					
				
	case comp == "TComboBox"
		aItems:= {'Item1','Item2','Item3'}
		oMainObject := TComboBox():New(04,04,,aItems,100,20,pnTop,,{||},,,,.T.,,,,,,,,,)
		cCSS +=	 BR+"QComboBox {";
				+BR+"  font-family:  Calibri,Lucida,Verdana; /*nome da fonte*/";
				+BR+"  font-size: 14pt; /*tamanho da fonte*/";
				+BR+"  border-radius: 6px; /*arredondamento da borda*/";
				+BR+"";
				+BR+"  /*cor de fundo*/";
				+BR+"  background: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,stop: 0 #FDEADA, stop: 1 #FAC08F);";
				+BR+"  border: 1px solid #E36C09; /*borda*/";
				+BR+"  color: #974806; /*cor da fonte*/";
				+BR+"  padding: 1px; /*espacamento (margin)*/";
				+BR+"  min-height: 26px; /*altura minima*/";
				+BR+"}";
				+BR+"/*Itens da lista*/";
				+BR+"QComboBox QAbstractItemView {";
				+BR+"  border: 2px solid #974806; /*Borda do container de itens*/";
				+BR+"  /*Cor de fundo do item tambem aceita degrade*/";
				+BR+"  selection-background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,stop: 0 #FDEADA, stop: 1 #FAC08F); ";
				+BR+"  height: 26px; /*Altura do item*/";
				+BR+"}";
				+BR+"/* Acoes ao pressionar o drop-down */ ";
				+BR+"QComboBox:on {";
				+BR+"   /*cor de fundo*/";
				+BR+"   background: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,stop: 0 #FAC08F, stop: 1 #FDEADA);";
				+BR+"}";
				+BR+"/* Caracteristicas do botao drop-drown */";
				+BR+"QComboBox::drop-down {";
				+BR+"  width: 30px; /*largura*/";
				+BR+"  border: 1px solid #974806; /*borda*/";
				+BR+"  border-top-right-radius: 3px; /*arredondamento superior direito*/";
				+BR+"  border-bottom-right-radius: 3px; /*arredondamento inferior direito*/";
				+BR+"}";
				+BR+"/* Imagem do botao drop-down */";
				+BR+"QComboBox::down-arrow {";
				+BR+"  padding: 0px 5px 0px 5px; /*margem*/";
				+BR+"  image: url('C:/garbage/combo.png');  /*imagem do botao drop-down*/";
				+BR+"  width: 20px; /*largura*/";
				+BR+"  height: 20px; /*altura*/";
				+BR+"}"		

	case comp == "TFolder"
		oMainFolder:show()
		cCSS +=	 BR+"QTabBar::tab";
				+BR+"{";
				+BR+"  color: #FFFFFF; /*cor da fonte*/";
				+BR+"  font-size: 14px; /*tamanho da fonta*/";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                     stop: 0 #FAC08F, stop: 1 #804000); /*Cor de fundo*/";
				+BR+"  border: 1px solid #494429; /*cor da borda*/";
				+BR+"  border-radius: 10px; /*arredondamento borda*/";
				+BR+"  min-width: 150px; /*largura minima botao*/";
				+BR+"  min-height: 17px; /*altura minima botao*/";
				+BR+"  padding: 2px; /*margin para arredondamento da borda*/";
				+BR+"}";
				+BR+"/* Acoes quando a aba for selecionada */";
				+BR+"QTabBar::tab:selected{";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                     stop: 0 #804000, stop: 1 #FAC08F); /*Cor de fundo*/";
				+BR+"  border-bottom: none; /*cor da borda*/";
				+BR+"}";
				+BR+"/* Acoes quando a aba nao estiver selecionada */";
				+BR+"QTabBar::tab:!selected{";
				+BR+"  margin-top: 2px; /*margem superior*/";
				+BR+"}"
				
	case comp == "TGet"
		public cTextField := "Texto para teste"
		oMainObject := TGet():New( 4,4,{|u| If(PCount()==0,cTextField,cTextField:=u)},;
						pnTop, 200, 10,,, 0, 16777215,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F.,,,,,,, )
		cCSS +=	 BR+"QLineEdit {";
				+BR+"  color: #0F243E; /*Cor da fonte*/";
				+BR+"  font-size: 14px; /*Tamanho da fonte*/";
				+BR+"  min-height: 40px; /*Largura minima*/";
				+BR+"  border: 2px solid #17365D; /*Cor da borda*/";
				+BR+"  border-radius: 10px; /*Arredondamento da borda*/";
				+BR+"  padding: 0 8px; /*Especo (margem)*/";
				+BR+"  background: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                 stop: 0 #548DD4, stop: 1 #B8CCE4); /*Cor de fundo*/";
				+BR+"  selection-background-color: #E36C09; /*Cor de fundo quando selecionado*/";
				+BR+"}"

	case comp == "TGroup"
		oMainObject:= TGroup():New(4,4,100,130,'Objeto TGroup',pnTop,,,.T.)
		cCSS +=	 BR+"QGroupBox {";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                    stop: 0 #E0E0E0, stop: 1 #FFFFFF); /*cor de fundo*/";
				+BR+"  border: 2px solid gray; /*cor da borda*/";
				+BR+"  border-radius: 5px;  /*arredondamento da borda*/";
				+BR+"  margin-top: 2px; /*espaco ao topo para o titulo*/";
				+BR+"}";
				+BR+"/* Caracterissticas do titulo */";
				+BR+"QGroupBox::title {";
				+BR+"  color: red;";
				+BR+"  subcontrol-origin: margin; /*margem*/";
				+BR+"  padding: 0 3px; /*espacamento*/";
				+BR+"  subcontrol-position: top center; /*posiciona texto ao topo+centro*/";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                    stop: 0 #FFOECE, stop: 1 #FFFFFF); /*cor de fundo*/";
				+BR+"}"
	
	case comp == "TListBox"
        nList := 1
        oMainObject := TListBox():New(4,4,,{'Item 1','Item 2','Item 3','Item 4'},100,100,{||},pnTop,,,,.T.)
		cCSS +=	 BR+"QAbstractItemView {";
				+BR+"  font-size: 18px; /*tamanho da fonte*/";
				+BR+"  color: #17365D; /*cor da fonte*/";
				+BR+"  border: 2px solid #17365D; /*cor da borda*/";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"			stop: 0 #548DD4, stop: 1 #B8CCE4); /*Cor de fundo*/";
				+BR+"";
				+BR+"  /* Caracteristicas quando selecionado*/";
				+BR+"  selection-color: #953734; /*cor da fonte*/";
				+BR+"  selection-background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"			stop: 0 #C4BD97, stop: 1 #DDD9C3); /*cor de fundo*/";
				+BR+"}"
				
	case comp == "TMeter"
		cCSS +=	 BR+"QProgressBar {";
				+BR+"    border: 2px solid #953734; /*cor da borda*/";
				+BR+"    border-radius: 5px; /*arredondamento da borda*/";
				+BR+"}";
				+BR+"/* caracteristicas da barra de progressao */";
				+BR+"QProgressBar::chunk {";
				+BR+"    background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"		stop: 0 #C4BD97, stop: 1 #DDD9C3); /*cor de fundo*/";
				+BR+"    width: 10px; /*largura*/";
				+BR+"    margin: 0.5px; /*Espacamento*/";
				+BR+"}"
		oMainObject := TMeter():Create(pnTop,{||70},4,4,100,100,16,,.T.)
						
	case comp == "TMsgBar" // TMsgItem
		oMainTabBar:show()
		cCSS +=	 BR+"/* Caracteristicas do fundo*/";
			+BR+"QStatusBar {";
			+BR+"  background: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,stop: 0 #B2A1C7, stop: 1 #5F497A);";
			+BR+"}";
			+BR+"/* Caracteristicas de fonte do item, OBS: nao aceita mudanca da cor da fonte*/";
			+BR+"QStatusBar QLabel{";
			+BR+"  font-size: 14px;";
			+BR+"  background: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,stop: 0 #B2A1C7, stop: 1 #5F497A);";
			+BR+"}";
			+BR+"/* Caracteristicas do item*/";
			+BR+"QStatusBar::item {";
			+BR+"  border: 1px solid #3F3151;";
			+BR+"  border-radius: 3px;";
			+BR+"}"
	  
	case comp == "TMultiGet"
		oMainObject := TMultiget():new(4,4,,pnTop,150,90,,,,,,.T.)
		cCSS +=	 BR+"QTextEdit {";
				+BR+"  color: #0F243E; /*Cor da fonte*/";
				+BR+"  font-size: 14px; /*Tamanho da fonte*/";
				+BR+"  min-height: 40px; /*Largura minima*/";
				+BR+"  border: 2px solid #17365D; /*Cor da borda*/";
				+BR+"  border-radius: 10px; /*Arredondamento da borda*/";
				+BR+"  padding: 0 8px; /*Especo (margem)*/";
				+BR+"  background: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                 stop: 0 #548DD4, stop: 1 #B8CCE4); /*Cor de fundo*/";
				+BR+"  selection-background-color: #E36C09; /*Cor de fundo quando selecionado*/";
				+BR+"}"

	case comp == "TPanel"
		oMainObject:= TPanel():New(4,4,"",pnTop,,.T.,,,CLR_BLUE,100,100)
		cCSS +=	 BR+"QLabel{";
				+BR+"  color: #FFFFFF; /*Cor da fonte*/";
				+BR+"  border: 2px solid #494429; /*Cor da borda*/";
				+BR+"  border-radius: 6px; /*Arrerondamento da borda*/";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                                    stop: 0 #804000, stop: 1 #FAC08F); /*Cor de fundo*/";
				+BR+"}"

	case comp == "TPanelCSS"
		oMainObject:= TPanelCss():New(4,4,,pnTop,,,,,,180,80,,)
		cCSS +=	 BR+"QFrame{";
				+BR+"  color: #FFFFFF; /*Cor da fonte*/";
				+BR+"  border: 2px solid #494429; /*Cor da borda*/";
				+BR+"  border-radius: 6px; /*Arrerondamento da borda*/";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                                    stop: 0 #804000, stop: 1 #FAC08F); /*Cor de fundo*/";
				+BR+"}"
				
	case comp == "TRadMenu"
		aItems := {'Item01','Item02','Item03','Item04','Item05'}
		oMainObject := TRadMenu():New (4,4,aItems,,pnTop,,,,,,,,100,12,,,,.T.)
		oMainObject:bSetGet := {|| 1 }
  		cCSS +=	 BR+"QRadioButton{";
				+BR+"  color: #3E97EB; /*cor da fonte*/";
				+BR+"  font-size: 14px; /*tamanho da fonte*/";
				+BR+"}";
  				+BR+"/*Caractristicas do indicador*/";
				+BR+"QRadioButton::indicator {";
				+BR+"    width: 18px; /*largura*/";
				+BR+"    height: 18px; /*altura*/";
				+BR+"    padding: 2px; /*margem entre os botoes*/";
				+BR+"}";
				+BR+"/*Quando selecionado*/";
				+BR+"QRadioButton::indicator:checked {";
				+BR+"    image: url(c:/garbage/radio_on.png);";
				+BR+"}";
				+BR+"/*Quando nao selecionado*/";
				+BR+"QRadioButton::indicator::unchecked {";
				+BR+"    image: url(c:/garbage/radio_off.png);";
				+BR+"}"	

	case comp == "TSay"
		oMainObject:= TSay():New(4,4,{||'Texto para exibição...'},pnTop,,,,,,.T.,,,140,16)
		cCSS +=	 BR+"QLabel{";
				+BR+"  font-size: 18px; /*Tamanho da fonte*/";
				+BR+"  color: #FFFFFF; /*Cor da fonte*/";
				+BR+"  border: 2px solid #494429; /*Cor da borda*/";
				+BR+"  border-radius: 6px; /*Arrerondamento da borda*/";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                                    stop: 0 #804000, stop: 1 #FAC08F); /*Cor de fundo*/";
				+BR+"}"

	case comp == "TSimpleEditor"
		oMainObject := tSimpleEditor():New(4,4,pnTop,150,90,,,,,.T.)
		cCSS +=	 BR+"QTextEdit {";
				+BR+"  color: #0F243E; /*Cor da fonte*/";
				+BR+"  font-size: 14px; /*Tamanho da fonte*/";
				+BR+"  min-height: 40px; /*Largura minima*/";
				+BR+"  border: 2px solid #17365D; /*Cor da borda*/";
				+BR+"  border-radius: 10px; /*Arredondamento da borda*/";
				+BR+"  padding: 0 8px; /*Especo (margem)*/";
				+BR+"  background: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                 stop: 0 #548DD4, stop: 1 #B8CCE4); /*Cor de fundo*/";
				+BR+"  selection-background-color: #E36C09; /*Cor de fundo quando selecionado*/";
				+BR+"}"

	case comp == "TSlider"
		oMainObject := TSlider():New(4,4,pnTop,{||},260,30,"Mensagem",)
		cCSS +=	 BR+"/*Caracteristicas do botao seletor*/";
				+BR+"QSlider::handle:horizontal {";
				+BR+"  background: #5F497A;";
				+BR+"}";
				+BR+"/*Caracteristicas da area selecionada*/";
				+BR+"QSlider::sub-page:horizontal {";
				+BR+"  background: #9887AD;";
				+BR+"}";
				+BR+"/*Caracteristicas da area nao selecionada*/";
				+BR+"QSlider::add-page:horizontal {";
				+BR+"  background: #CCC1D9;";
				+BR+"  ";
				+BR+"  /*Margem permite manipular largura da barra*/";
				+BR+"  margin: 24px 0px; ";
				+BR+"}"
					
	case comp == "TSpinBox"
		oMainObject := tSpinBox():new(4,4,pnTop,,30,13)
		cCSS +=	 BR+"QSpinBox {";
				+BR+"    font-size: 14px; /*tamanho fonte*/";
				+BR+"    border: 2px solid #494429; /*Cor da borda*/";
				+BR+"}";
				+BR+"/*Caracteristicas do botao UP*/";
				+BR+"QSpinBox::up-button {";
				+BR+"  width: 16px; /*Largura botao*/";
				+BR+"  border: 1px solid #494429; /*Cor da borda*/";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                    stop: 0 #804000, stop: 1 #FAC08F); /*Cor de fundo*/";
				+BR+"}";
				+BR+"/*Caracteristicas do botao UP quando pressionado*/";
				+BR+"QSpinBox::up-button:pressed {";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                    stop: 0 #FAC08F, stop: 1 #804000);";
				+BR+"}";
				+BR+"/*Caracteristicas do botao DOWN*/";
				+BR+"QSpinBox::down-button {";
				+BR+"  width: 16px; /*Largura botao*/";
				+BR+"  border: 1px solid #494429; /*Cor da borda*/";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                    stop: 0 #804000, stop: 1 #FAC08F); /*Cor de fundo*/";
				+BR+"}";
				+BR+"/*Caracteristicas do botao DOWN quando pressionado*/";
				+BR+"QSpinBox::down-button:pressed {";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                    stop: 0 #FAC08F, stop: 1 #804000);";
				+BR+"}"
						
	case comp == "TSplitter"
		oMainSplit:show()
		cCSS +=	 BR+"QSplitter{";
				+BR+"  border: 3px solid #4F6128;";
				+BR+"}";
				+BR+"/*Caracteristicas do botao separador*/";
				+BR+"QSplitter::handle:vertical{";
				+BR+"  height: 8px; /*altura*/";
				+BR+"  border: 2px solid #76923C; /*cor da borda*/";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                  stop: 0 #C3D69B, stop: 1 #76923C); /*cor do fundo*/";
				+BR+"}";
				+BR+"/*Caracteristicas do botao separador quando pressionado*/";
				+BR+"QSplitter::handle:pressed {";
				+BR+"  background-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"                  stop: 0 #76923C, stop: 1 #C3D69B); /*cor do fundo*/";
				+BR+"}"
						
	case comp == "TTree"
		oMainObject := TTree():New(4,4,80,260,pnTop,,)
		oMainObject:BeginUpdate()
		oMainObject:PTAddNodes( StrZero(0,7), StrZero(1,7), "", "Primeiro nível da TTree", "FOLDER5", "FOLDER6" )
		oMainObject:PTAddNodes( StrZero(1,7), StrZero(2,7), "", "Segundo nível da TTree", "FOLDER10", )
		oMainObject:PTAddNodes( StrZero(2,7), StrZero(3,7), "", "Subnível 01", "FOLDER5", "FOLDER6" )
		oMainObject:PTAddNodes( StrZero(2,7), StrZero(4,7), "", "Subnível 02", "FOLDER5", "FOLDER6" )
		oMainObject:PTAddNodes( StrZero(2,7), StrZero(5,7), "", "Subnível 03", "FOLDER5", "FOLDER6" )
		oMainObject:PTSendNodes()
		oMainObject:EndUpdate()
		cCSS +=	 BR+"QTreeView{";
				+BR+"  font-size: 14px; /*tamanho do fonte*/";
				+BR+"  border: 2px solid #974806; /*cor da borda*/";
				+BR+"  background: #F5FBE7";
				+BR+"}";
				+BR+"/*Caracteristicas do item*/";
				+BR+"QTreeView::item {";
				+BR+"  color: #974806; /*cor da font*/";
				+BR+"";
				+BR+"  /*Pintura da barra esquerda do item selecionado*/";
				+BR+"  border: 1px solid #974806; ";
				+BR+"  border-top-color: transparent;";
				+BR+"  border-bottom-color: transparent;";
				+BR+"}";
				+BR+"/*Caracteristicas do item selecionado*/";
				+BR+"QTreeView::item:selected {";
				+BR+"  background: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,";
				+BR+"              stop: 0 #FAC08F, stop: 1 #FDEADA); /*cor de fundo*/";
				+BR+"}";
				+BR+"/*Caracteristicas do item, quando mouse posicionado sobre ele*/";
				+BR+"QTreeView::item:hover {";
				+BR+"  background: #FFECDC; /*cor de fundo*/";
				+BR+"}"
	endCase
	
return
