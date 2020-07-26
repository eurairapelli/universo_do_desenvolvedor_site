#INCLUDE "RWMAKE.CH"
#INCLUDE "TOPCONN.CH"
/*/
ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณ RELANAL  บ Autor ณ Reinaldo Dias      บ Data ณ  21/12/2004 บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDescricao ณ Relatorio para monitoramento de entrada.                   บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ AP8                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿
/*/
User Function RELANALI()
Local   Titulo      := "ANALISE DE SALDOS"
Local   cDesc1      := "Este programa tem como objetivo imprimir relatorio "
Local   cDesc2      := "de acordo com os parametros informados pelo usuario."
Local   cDesc3      := ""
Local   cPict       := ""
Private aOrd        := ""
Private Tamanho     := "G"  // P - 80, M - 132, G - 220
Private Limite      := 220
Private wNrel       := "RELANALI"
Private cPerg       := "RELANA"
Private cString     
Private nLastKey    := 00
Private nTipo       := 18
Private nLin        := 80
Private cbcont      := 00
Private CONTFL      := 01
Private m_pag       := 01
Private Imprime     := .T.
Private lEnd        := .F.
Private lAbortPrint := .F.
Private cbtxt       := Space(10)
Private aReturn     := { "Zebrado", 1, "Administracao", 2, 2, 1, "", 1}
Private cFileTRB
Private cMsSQL      := .T.

AjustaSX1() 
Pergunte(cPerg,.F.)  // Pergunta no SX1

//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณ Envia controle para a funcao SETPRINT
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
wNrel := SetPrint(cString,wNrel,cPerg,@titulo,cDesc1,cDesc2,cDesc3,.F., aOrd ,.T. ,Tamanho,,.T.)

If nLastKey == 27
	Return
Endif

SetDefault(aReturn,cString)

If nLastKey == 27
   Return
Endif

RptStatus({|| RunReport(Titulo) },Titulo)          

Return


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Static Function RunReport(Titulo)
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
dUltFech := GetMV("MV_ULMES")
dDataI   := dUltFech + 1
dDataF   := dDataBase
IF dDataF < dDataI
   dDataF := dDataI
Endif
Cabec1   := PADC("DATA FECHAMENTO: "+DTOC(dUltFech)+"  -  PERIODO: "+DTOC(dDataI)+" A "+DTOC(dDataF)+"  -  LOCAL: "+MV_PAR03,Limite)
Cabec2   := "PRODUTO         DESCRICAO                            LOTE                   SALDO INICIAL              MOVIMENTACAO               SALDO ATUAL  STATUS"
cPict    := PesqPict('SB2','B2_QATU')
IF MV_PAR06 = 2 .OR. MV_PAR06 = 3
   cMsSQL := .F.
Endif
/*                                                                                     
PRODUTO         DESCRICAO                            LOTE                   SALDO INICIAL              MOVIMENTACAO               SALDO ATUAL  STATUS
XXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  XXXXXXXXXX  SB9 => 999,999,999.99999  KAR => 999,999,999.99999  SB2 => 999,999,999.99999  XXXXXX 
                                                                 SBJ => 999,999,999.99999  SD5 => 999,999,999.99999  SB8 => 999,999,999.99999  Problema
                                                                 SBK => 999,999,999.99999  SDB => 999,999,999.99999  SBF => 999,999,999.99999           
                                                                                           SDA => 999,999,999.99999  SDA => 999,999,999.99999  SDA+SBF => 999,999,999.99999
                16                                   53          65     72                 91     98                 117    124                143        154
*/

CriaTRB()

CalcSaldos(Space(15))

DBSelectArea("TRB")
DBGotop()                       

cProduto := TRB->PRODUTO
nTotProd := 0
nTotErro := 0

While !Eof()
  
  If nLin > 58
     nLin := Cabec(Titulo,Cabec1,Cabec2,wNrel,Tamanho,nTipo)   
     nLin++                                       
  Endif                    

  lImprimir := .T.  
  IF MV_PAR04 = 1 // Com Problemas
     IF TRB->STATUS = "OK" 
        lImprimir := .F.
     Else 
        CalcSaldos(TRB->PRODUTO)     
        IF TRB->STATUS = "OK" 
           lImprimir := .F.
        Endif
     Endif   
  ElseIF MV_PAR04 = 2 // Sem Problemas
     IF TRB->STATUS <> "OK"         
        CalcSaldos(TRB->PRODUTO)     
        IF TRB->STATUS <> "OK"         
           lImprimir := .F.            
        Endif
     Endif    
  Else
     IF TRB->STATUS <> "OK"         
        CalcSaldos(TRB->PRODUTO)     
     Endif    
  Endif     

  IF lImprimir
     DBSelectArea("SB1")
     DBSetOrder(1)
     DBSeek(xFilial("SB1")+TRB->PRODUTO)
     
     IF MV_PAR05 == 2 .AND. cProduto <> TRB->PRODUTO
        @ nLin,001 PSAY __PrtThinLine()
        nLin ++     
        cProduto := TRB->PRODUTO
     Endif

     @ nLin,000 PSAY TRB->PRODUTO
     @ nLin,016 PSAY Substr(SB1->B1_DESC,1,35)
     @ nLin,053 PSAY TRB->LOTE

     IF MV_PAR05 == 1
        @ nLin,065 PSAY "SB9 =>"
        @ nLin,072 PSAY TRB->SB9       PICTURE cPict
        @ nLin,091 PSAY "KAR =>" 
        @ nLin,098 PSAY TRB->KAR       PICTURE cPict
        @ nLin,117 PSAY "SB2 =>" 
        @ nLin,124 PSAY TRB->SB2       PICTURE cPict
        @ nLin,143 PSAY TRB->STATUS
        nLin ++     
     Endif   
     @ nLin,065 PSAY "SBJ =>"
     @ nLin,072 PSAY TRB->SBJ       PICTURE cPict
     @ nLin,091 PSAY "SD5 =>" 
     @ nLin,098 PSAY TRB->SD5       PICTURE cPict
     @ nLin,117 PSAY "SB8 =>" 
     @ nLin,124 PSAY TRB->SB8       PICTURE cPict
     IF MV_PAR05 == 2
        @ nLin,143 PSAY TRB->STATUS
     Endif
     nLin ++     
     @ nLin,065 PSAY "SBK =>"
     @ nLin,072 PSAY TRB->SBK       PICTURE cPict
     @ nLin,091 PSAY "SDB =>" 
     @ nLin,098 PSAY TRB->SDB       PICTURE cPict
     @ nLin,117 PSAY "SBF =>" 
     @ nLin,124 PSAY TRB->SBF       PICTURE cPict
     nLin ++   
     @ nLin,091 PSAY "SDA =>" 
     @ nLin,098 PSAY TRB->MOVSDA    PICTURE cPict
     @ nLin,117 PSAY "SDA =>" 
     @ nLin,124 PSAY TRB->SLDSDA    PICTURE cPict
     IF TRB->SLDSDA <> 0
        @ nLin,143 PSAY "SDA+SBF =>" 
        @ nLin,154 PSAY (TRB->SBF+TRB->SLDSDA)    PICTURE cPict
     Endif   
     nLin ++   
     IF MV_PAR05 == 1
        @ nLin,001 PSAY __PrtThinLine()
     Endif   
     nLin ++   
     IF TRB->STATUS = "Problema"
        nTotErro++
     Endif  
  Endif
    
  DBSelectArea("TRB")
  DBSkip();nTotProd++
  
Enddo    

@ nLin,001 PSAY __PrtThinLine()                                                                                 
nLin++
@ nLin,001 PSAY "Total de Produtos  ==> "+Trans(nTotProd,'@E 999,999,999')
nLin++
@ nLin,001 PSAY "Total c/ Problemas ==> "+Trans(nTotErro,'@E 999,999,999')
nLin++
@ nLin,001 PSAY __PrtThinLine()

DBSelectArea("TRB")
DBCloseArea()
FERASE(cFileTRB+GetDBExtension())
FERASE(cFileTRB+OrDBagExt())

//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณ Finaliza a execucao do relatorio...                                 ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
SET DEVICE TO SCREEN

//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณ Se impressao em disco, chama o gerenciador de impressao...          ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If aReturn[5]==1
   DBCommitAll()
   SET PRINTER TO
   OurSpool(wNrel)
Endif

MS_FLUSH()

Return


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Static Function CriaTRB()
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Local aCampos := {}
AAdd(aCampos,{"PRODUTO" ,"C",15,0})
AAdd(aCampos,{"LOTE"    ,"C",10,0})
AAdd(aCampos,{"SB9"     ,"N",18,4})
AAdd(aCampos,{"SBJ"     ,"N",18,4})
AAdd(aCampos,{"SBK"     ,"N",18,4})
AAdd(aCampos,{"KAR"     ,"N",18,4})
AAdd(aCampos,{"SD5"     ,"N",18,4})
AAdd(aCampos,{"SDB"     ,"N",18,4})
AAdd(aCampos,{"SB2"     ,"N",18,4})
AAdd(aCampos,{"SB8"     ,"N",18,4})
AAdd(aCampos,{"SBF"     ,"N",18,4})
AAdd(aCampos,{"MOVSDA"  ,"N",18,4})
AAdd(aCampos,{"SLDSDA"  ,"N",18,4})
AAdd(aCampos,{"STATUS"  ,"C",10,0})

cFileTRB := CriaTrab(aCampos) 
DBCreate(cFileTRB,aCampos)

DBUseArea(.T.,,cFileTRB,"TRB",.F.,.F.) // Exclusivo
IF MV_PAR05 = 1
   IndRegua("TRB",cFileTRB,"PRODUTO",,,OemToAnsi("Organizando Arquivo.."))
Else 
   IndRegua("TRB",cFileTRB,"PRODUTO+LOTE",,,OemToAnsi("Organizando Arquivo.."))
Endif   
DBClearIndex()
DBSetIndex(cFileTRB+OrdBagExt())

Return      


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Static Function CalcSaldos(cProduto)
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Local aArea := GetArea()

//Processando Saldo Inicial
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF MV_PAR05 = 1
   cQuery := " SELECT B9_COD,SUM(B9_QINI) AS B9_QINI FROM "+RETSQLNAME('SB9')+" WHERE B9_FILIAL='"+xFilial("SB9")+"' AND B9_LOCAL='"+MV_PAR03+"' AND D_E_L_E_T_ <> '*'" 
   cQuery += " AND B9_DATA = '"+DTOS(dUltFech)+"'"
   IF !Empty(cProduto)
      cQuery += " AND B9_COD = '"+cProduto+"'"
   Else
      cQuery += " AND B9_COD >= '"+MV_PAR01+"' AND B9_COD <= '"+MV_PAR02+"'"
   Endif                                                                    
   cQuery += " GROUP BY B9_COD"
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySB9",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySB9->B9_COD)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySB9->B9_COD
     Else
        RecLock("TRB",.F.)
     Endif  
     TRB->SB9 := QrySB9->B9_QINI
     MsUnlock()
     DBSelectArea("QrySB9")
     DBSkip()
   Enddo
   DBCloseArea()

   cQuery := " SELECT BJ_COD,SUM(BJ_QINI) AS BJ_QINI FROM "+RETSQLNAME('SBJ')+" WHERE BJ_FILIAL='"+xFilial("SBJ")+"' AND BJ_LOCAL='"+MV_PAR03+"' AND D_E_L_E_T_ <> '*'" 
   cQuery += " AND BJ_DATA = '"+DTOS(dUltFech)+"'" 
   IF !Empty(cProduto)
      cQuery += " AND BJ_COD = '"+cProduto+"'"
   Else 
      cQuery += " AND BJ_COD >= '"+MV_PAR01+"' AND BJ_COD <= '"+MV_PAR02+"'"
   Endif       
   cQuery += " GROUP BY BJ_COD"   
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySBJ",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySBJ->BJ_COD)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySBJ->BJ_COD
     Else
        RecLock("TRB",.F.)
     Endif  
     TRB->SBJ := QrySBJ->BJ_QINI
     TRB->SD5 := QrySBJ->BJ_QINI
     MsUnlock()
     DBSelectArea("QrySBJ")
     DBSkip()
   Enddo
   DBCloseArea()

   cQuery := " SELECT BK_COD,SUM(BK_QINI) AS BK_QINI FROM "+RETSQLNAME('SBK')+" WHERE BK_FILIAL='"+xFilial("SBK")+"' AND BK_LOCAL='"+MV_PAR03+"' AND D_E_L_E_T_ <> '*'"
   cQuery += " AND BK_DATA = '"+DTOS(dUltFech)+"'"
   IF !Empty(cProduto)
      cQuery += " AND BK_COD = '"+cProduto+"'"
   Else           
      cQuery += " AND BK_COD >= '"+MV_PAR01+"' AND BK_COD <= '"+MV_PAR02+"'"
   Endif       
   cQuery += " GROUP BY BK_COD"   
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySBK",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySBK->BK_COD)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySBK->BK_COD
     Else
        RecLock("TRB",.F.)
     Endif  
     TRB->SBK := QrySBK->BK_QINI
     TRB->SDB := QrySBK->BK_QINI
     MsUnlock()
     DBSelectArea("QrySBK")
     DBSkip()
   Enddo
   DBCloseArea()

   //Processando Saldo Atual
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   cQuery := " SELECT B2_COD,SUM(B2_QATU) AS B2_QATU,SUM(B2_QACLASS) AS B2_QACLASS FROM "+RETSQLNAME('SB2')+" WHERE B2_FILIAL='"+xFilial("SB2")+"' AND B2_LOCAL='"+MV_PAR03+"'"
   cQuery += " AND D_E_L_E_T_ <> '*'"
   IF !Empty(cProduto)
      cQuery += " AND B2_COD = '"+cProduto+"'" 
   Else           
      cQuery += " AND B2_COD >= '"+MV_PAR01+"' AND B2_COD <= '"+MV_PAR02+"'"
   Endif       
   cQuery += " GROUP BY B2_COD"
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySB2",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySB2->B2_COD)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySB2->B2_COD
     Else
        RecLock("TRB",.F.)
     Endif
     TRB->SB2    := QrySB2->B2_QATU
     TRB->SLDSDA := QrySB2->B2_QACLASS
     MsUnlock()
     DBSelectArea("QrySB2")
     DBSkip()
   Enddo
   DBCloseArea()

   cQuery := " SELECT B8_PRODUTO,SUM(B8_SALDO) AS B8_SALDO,SUM(B8_QACLASS) AS B8_QACLASS FROM "+RETSQLNAME('SB8')+" WHERE B8_FILIAL='"+xFilial("SB8")+"' AND B8_LOCAL='"+MV_PAR03+"' AND B8_SALDO <> 0"
   cQuery += " AND D_E_L_E_T_ <> '*'"
   IF !Empty(cProduto)
      cQuery += " AND B8_PRODUTO = '"+cProduto+"'" 
   Else           
      cQuery += " AND B8_PRODUTO >= '"+MV_PAR01+"' AND B8_PRODUTO <= '"+MV_PAR02+"'"
   Endif  
   cQuery += " GROUP BY B8_PRODUTO"
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySB8",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySB8->B8_PRODUTO)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySB8->B8_PRODUTO
     Else
        RecLock("TRB",.F.)
     Endif
     TRB->SB8    := QrySB8->B8_SALDO
     TRB->SLDSDA := QrySB8->B8_QACLASS
     MsUnlock()
     DBSelectArea("QrySB8")
     DBSkip()
   Enddo
   DBCloseArea()

   cQuery := " SELECT BF_PRODUTO,SUM(BF_QUANT) AS BF_QUANT FROM "+RETSQLNAME('SBF')+" WHERE BF_FILIAL='"+xFilial("SBF")+"' AND BF_LOCAL='"+MV_PAR03+"' AND BF_QUANT <> 0"
   cQuery += " AND D_E_L_E_T_ <> '*'"
   IF !Empty(cProduto)
      cQuery += " AND BF_PRODUTO = '"+cProduto+"'"  
   Else           
      cQuery += " AND BF_PRODUTO >= '"+MV_PAR01+"' AND BF_PRODUTO <= '"+MV_PAR02+"'"
   Endif
   cQuery += " GROUP BY BF_PRODUTO"
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySBF",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySBF->BF_PRODUTO)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySBF->BF_PRODUTO
     Else
        RecLock("TRB",.F.)
     Endif
     TRB->SBF := QrySBF->BF_QUANT
     MsUnlock()
     DBSelectArea("QrySBF")
     DBSkip()
   Enddo
   DBCloseArea()

   cQuery := " SELECT DA_PRODUTO,SUM(DA_SALDO) AS DA_SALDO  FROM "+RETSQLNAME('SDA')+" WHERE DA_FILIAL='"+xFilial("SDA")+"' AND DA_LOCAL='"+MV_PAR03+"' AND DA_SALDO <> 0"
   cQuery += " AND D_E_L_E_T_ <> '*' AND DA_DATA <= '"+DTOS(dDataF)+"'"
   IF !Empty(cProduto)
      cQuery += " AND DA_PRODUTO = '"+cProduto+"'"  
   Else           
      cQuery += " AND DA_PRODUTO >= '"+MV_PAR01+"' AND DA_PRODUTO <= '"+MV_PAR02+"'"
   Endif       
   cQuery += " GROUP BY DA_PRODUTO"
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySDA",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySDA->DA_PRODUTO)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySDA->DA_PRODUTO
     Else
        RecLock("TRB",.F.)
     Endif
     TRB->MOVSDA := QrySDA->DA_SALDO
     MsUnlock()
     DBSelectArea("QrySDA")
     DBSkip()
   Enddo
   DBCloseArea()

   //Processando Movimentacao
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   DBSelectArea('SB1')
   DBSetOrder(1)
   IF !Empty(cProduto)
      DBSeek(xFilial('SB1')+cProduto)
   Else
      DBSeek(xFilial('SB1')+MV_PAR01,.T.)   
   Endif   
   While !Eof() .AND. IIF(Empty(cProduto),B1_FILIAL+B1_COD <= xFilial('SB1')+MV_PAR02,B1_FILIAL+B1_COD = xFilial('SB1')+cProduto)
     aSaldos := CalcEst(SB1->B1_COD, MV_PAR03, dDataF+1)
     nSaldo  := 0
     IF aSaldos <> Nil .AND. Len(aSaldos) > 0
        nSaldo := aSaldos[1]                        
     Endif   
     DBSelectArea("TRB")
     IF !DBSeek(SB1->B1_COD)
        RecLock("TRB",.T.)
        TRB->PRODUTO := SB1->B1_COD
     Else
        RecLock("TRB",.F.)
     Endif
     TRB->KAR := nSaldo
     MsUnlock()
     DBSelectArea("SB1")
     DBSkip()
   Enddo

   IF cMsSQL
      cQuery := " SELECT D5_PRODUTO,ISNULL(SUM(CASE WHEN D5_ORIGLAN<='500' OR SUBSTRING(D5_ORIGLAN,1,2) IN ('DE','PR','MA')  THEN ABS(D5_QUANT)"
      cQuery += "                                   WHEN D5_ORIGLAN >'500'                                                   THEN ABS(D5_QUANT) * -1  END),0) AS D5_QUANT"
      cQuery += " FROM "+RETSQLNAME('SD5')+" WHERE D5_FILIAL='"+xFilial("SD5")+"' AND D5_LOCAL='"+MV_PAR03+"' AND D_E_L_E_T_ <> '*'"
      cQuery += " AND D5_ESTORNO= ' ' AND D5_DATA >= '"+DTOS(dDataI)+"' AND D5_DATA <= '"+DTOS(dDataF)+"'"
   Else
      cQuery := " SELECT D5_PRODUTO,SUM(CASE WHEN D5_ORIGLAN<='500' OR SUBSTR(D5_ORIGLAN,1,2) IN ('DE','PR','MA')  THEN ABS(D5_QUANT)"
      cQuery += "                            WHEN D5_ORIGLAN >'500'                                                THEN ABS(D5_QUANT) * -1  END) AS D5_QUANT"
      cQuery += " FROM "+RETSQLNAME('SD5')+" WHERE D5_FILIAL='"+xFilial("SD5")+"' AND D5_LOCAL='"+MV_PAR03+"' AND D_E_L_E_T_ <> '*'"
      cQuery += " AND D5_ESTORNO= ' ' AND D5_DATA >= '"+DTOS(dDataI)+"' AND D5_DATA <= '"+DTOS(dDataF)+"'"
   Endif
   IF !Empty(cProduto)
      cQuery += " AND D5_PRODUTO = '"+cProduto+"'"  
   Else           
      cQuery += " AND D5_PRODUTO >= '"+MV_PAR01+"' AND D5_PRODUTO <= '"+MV_PAR02+"'"
   Endif          
   cQuery += " GROUP BY D5_PRODUTO"
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySD5",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySD5->D5_PRODUTO)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySD5->D5_PRODUTO
     Else
        RecLock("TRB",.F.)
     Endif
     TRB->SD5 += QrySD5->D5_QUANT
     MsUnlock()
     DBSelectArea("QrySD5")
     DBSkip()
   Enddo
   DBCloseArea()

   IF cMsSQL
      cQuery := " SELECT DB_PRODUTO,ISNULL(SUM(CASE WHEN DB_TM<='500' OR SUBSTRING(DB_TM,1,2) IN ('DE','PR','MA')  THEN ABS(DB_QUANT)"
      cQuery += "                                   WHEN DB_TM >'500'                                              THEN ABS(DB_QUANT) * -1  END),0) AS DB_QUANT"
      cQuery += " FROM "+RETSQLNAME('SDB')+" WHERE DB_FILIAL='"+xFilial("SDB")+"' AND DB_LOCAL='"+MV_PAR03+"' AND D_E_L_E_T_ <> '*'"
      cQuery += " AND DB_ESTORNO= ' ' AND DB_ATUEST='S' AND DB_DATA >= '"+DTOS(dDataI)+"' AND DB_DATA <= '"+DTOS(dDataF)+"'"
   Else
      cQuery := " SELECT DB_PRODUTO,SUM(CASE WHEN DB_TM<='500' OR SUBSTR(DB_TM,1,2) IN ('DE','PR','MA')  THEN ABS(DB_QUANT)"
      cQuery += "                            WHEN DB_TM >'500'                                           THEN ABS(DB_QUANT) * -1  END) AS DB_QUANT"
      cQuery += " FROM "+RETSQLNAME('SDB')+" WHERE DB_FILIAL='"+xFilial("SDB")+"' AND DB_LOCAL='"+MV_PAR03+"' AND D_E_L_E_T_ <> '*'"
      cQuery += " AND DB_ESTORNO= ' ' AND DB_ATUEST='S' AND DB_DATA >= '"+DTOS(dDataI)+"' AND DB_DATA <= '"+DTOS(dDataF)+"'"
   Endif
   IF !Empty(cProduto)
      cQuery += " AND DB_PRODUTO = '"+cProduto+"'"  
   Else           
      cQuery += " AND DB_PRODUTO >= '"+MV_PAR01+"' AND DB_PRODUTO <= '"+MV_PAR02+"'"
   Endif          
   cQuery += " GROUP BY DB_PRODUTO"
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySDB",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySDB->DB_PRODUTO)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySDB->DB_PRODUTO
     Else
        RecLock("TRB",.F.)
     Endif
     TRB->SDB += QrySDB->DB_QUANT
     MsUnlock()
     DBSelectArea("QrySDB")
     DBSkip()
   Enddo
   DBCloseArea()

Else // Por Lote
   cQuery := " SELECT BJ_COD,BJ_LOTECTL,SUM(BJ_QINI) AS BJ_QINI FROM "+RETSQLNAME('SBJ')+" WHERE BJ_FILIAL='"+xFilial("SBJ")+"' AND BJ_LOCAL='"+MV_PAR03+"' AND D_E_L_E_T_ <> '*'" 
   cQuery += " AND BJ_DATA = '"+DTOS(dUltFech)+"'"
   IF !Empty(cProduto)
      cQuery += " AND BJ_COD = '"+cProduto+"'"  
   Else           
      cQuery += " AND BJ_COD >= '"+MV_PAR01+"' AND BJ_COD <= '"+MV_PAR02+"'"
   Endif          
   cQuery += " GROUP BY BJ_COD,BJ_LOTECTL"
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySBJ",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySBJ->BJ_COD+QrySBJ->BJ_LOTECTL)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySBJ->BJ_COD
        TRB->LOTE    := QrySBJ->BJ_LOTECTL
     Else
        RecLock("TRB",.F.)
     Endif  
     TRB->SBJ := QrySBJ->BJ_QINI
     TRB->SD5 := QrySBJ->BJ_QINI
     MsUnlock()
     DBSelectArea("QrySBJ")
     DBSkip()
   Enddo
   DBCloseArea()

   cQuery := " SELECT BK_COD,BK_LOTECTL,SUM(BK_QINI) AS BK_QINI FROM "+RETSQLNAME('SBK')+" WHERE BK_FILIAL='"+xFilial("SBK")+"' AND BK_LOCAL='"+MV_PAR03+"' AND D_E_L_E_T_ <> '*'"
   cQuery += " AND BK_DATA = '"+DTOS(dUltFech)+"'" 
   IF !Empty(cProduto)
      cQuery += " AND BK_COD = '"+cProduto+"'"  
   Else           
      cQuery += " AND BK_COD >= '"+MV_PAR01+"' AND BK_COD <= '"+MV_PAR02+"'"
   Endif          
   cQuery += " GROUP BY BK_COD,BK_LOTECTL"
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySBK",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySBK->BK_COD+QrySBK->BK_LOTECTL)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySBK->BK_COD
        TRB->LOTE    := QrySBK->BK_LOTECTL
     Else
        RecLock("TRB",.F.)
     Endif  
     TRB->SBK := QrySBK->BK_QINI
     TRB->SDB := QrySBK->BK_QINI
     MsUnlock()
     DBSelectArea("QrySBK")
     DBSkip()
   Enddo
   DBCloseArea()

   cQuery := " SELECT B8_PRODUTO,B8_LOTECTL,SUM(B8_SALDO) AS B8_SALDO,SUM(B8_QACLASS) AS B8_QACLASS FROM "+RETSQLNAME('SB8')+" WHERE B8_FILIAL='"+xFilial("SB8")+"' AND B8_LOCAL='"+MV_PAR03+"' AND B8_SALDO <> 0"
   cQuery += " AND D_E_L_E_T_ <> '*'"
   IF !Empty(cProduto)
      cQuery += " AND B8_PRODUTO = '"+cProduto+"'"  
   Else           
      cQuery += " AND B8_PRODUTO >= '"+MV_PAR01+"' AND B8_PRODUTO <= '"+MV_PAR02+"'"
   Endif          
   cQuery += " GROUP BY B8_PRODUTO,B8_LOTECTL"
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySB8",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySB8->B8_PRODUTO+QrySB8->B8_LOTECTL)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySB8->B8_PRODUTO
        TRB->LOTE    := QrySB8->B8_LOTECTL
     Else
        RecLock("TRB",.F.)
     Endif
     TRB->SB8    := QrySB8->B8_SALDO
     TRB->SLDSDA := QrySB8->B8_QACLASS
     MsUnlock()
     DBSelectArea("QrySB8")
     DBSkip()
   Enddo
   DBCloseArea()

   cQuery := " SELECT BF_PRODUTO,BF_LOTECTL,SUM(BF_QUANT) AS BF_QUANT FROM "+RETSQLNAME('SBF')+" WHERE BF_FILIAL='"+xFilial("SBF")+"' AND BF_LOCAL='"+MV_PAR03+"' AND BF_QUANT <> 0"
   cQuery += " AND D_E_L_E_T_ <> '*'"
   IF !Empty(cProduto)
      cQuery += " AND BF_PRODUTO = '"+cProduto+"'"  
   Else           
      cQuery += " AND BF_PRODUTO >= '"+MV_PAR01+"' AND BF_PRODUTO <= '"+MV_PAR02+"'"
   Endif          
   cQuery += " GROUP BY BF_PRODUTO,BF_LOTECTL"
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySBF",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySBF->BF_PRODUTO+QrySBF->BF_LOTECTL)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySBF->BF_PRODUTO           
        TRB->LOTE    := QrySBF->BF_LOTECTL
     Else
        RecLock("TRB",.F.)
     Endif
     TRB->SBF := QrySBF->BF_QUANT
     MsUnlock()
     DBSelectArea("QrySBF")
     DBSkip()
   Enddo
   DBCloseArea()

   cQuery := " SELECT DA_PRODUTO,DA_LOTECTL,SUM(DA_SALDO) AS DA_SALDO  FROM "+RETSQLNAME('SDA')+" WHERE DA_FILIAL='"+xFilial("SDA")+"' AND DA_LOCAL='"+MV_PAR03+"' AND DA_SALDO <> 0"
   cQuery += " AND D_E_L_E_T_ <> '*' AND DA_DATA <= '"+DTOS(dDataF)+"'"
   IF !Empty(cProduto)
      cQuery += " AND DA_PRODUTO = '"+cProduto+"'"  
   Else           
      cQuery += " AND DA_PRODUTO >= '"+MV_PAR01+"' AND DA_PRODUTO <= '"+MV_PAR02+"'"
   Endif          
   cQuery += " GROUP BY DA_PRODUTO,DA_LOTECTL"
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySDA",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySDA->DA_PRODUTO+QrySDA->DA_LOTECTL)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySDA->DA_PRODUTO
        TRB->LOTE    := QrySDA->DA_LOTECTL
     Else
        RecLock("TRB",.F.)
     Endif
     TRB->MOVSDA := QrySDA->DA_SALDO
     MsUnlock()
     DBSelectArea("QrySDA")
     DBSkip()
   Enddo
   DBCloseArea()


   //Processando Movimentacao
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   IF cMsSQL
      cQuery := " SELECT D5_PRODUTO,D5_LOTECTL,ISNULL(SUM(CASE WHEN D5_ORIGLAN<='500' OR SUBSTRING(D5_ORIGLAN,1,2) IN ('DE','PR','MA')  THEN ABS(D5_QUANT)"
      cQuery += "                                              WHEN D5_ORIGLAN >'500'                                                   THEN ABS(D5_QUANT) * -1  END),0) AS D5_QUANT"
      cQuery += " FROM "+RETSQLNAME('SD5')+" WHERE D5_FILIAL='"+xFilial("SD5")+"' AND D5_LOCAL='"+MV_PAR03+"' AND D_E_L_E_T_ <> '*'"
      cQuery += " AND D5_ESTORNO= ' ' AND D5_DATA >= '"+DTOS(dDataI)+"' AND D5_DATA <= '"+DTOS(dDataF)+"'"
   Else
      cQuery := " SELECT D5_PRODUTO,D5_LOTECTL,SUM(CASE WHEN D5_ORIGLAN<='500' OR SUBSTR(D5_ORIGLAN,1,2) IN ('DE','PR','MA')  THEN ABS(D5_QUANT)"
      cQuery += "                                       WHEN D5_ORIGLAN >'500'                                                   THEN ABS(D5_QUANT) * -1  END) AS D5_QUANT"
      cQuery += " FROM "+RETSQLNAME('SD5')+" WHERE D5_FILIAL='"+xFilial("SD5")+"' AND D5_LOCAL='"+MV_PAR03+"' AND D_E_L_E_T_ <> '*'"
      cQuery += " AND D5_ESTORNO= ' ' AND D5_DATA >= '"+DTOS(dDataI)+"' AND D5_DATA <= '"+DTOS(dDataF)+"'"
   Endif
   IF !Empty(cProduto)
      cQuery += " AND D5_PRODUTO = '"+cProduto+"'"  
   Else           
      cQuery += " AND D5_PRODUTO >= '"+MV_PAR01+"' AND D5_PRODUTO <= '"+MV_PAR02+"'"
   Endif          
   cQuery += " GROUP BY D5_PRODUTO,D5_LOTECTL"
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySD5",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySD5->D5_PRODUTO+QrySD5->D5_LOTECTL)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySD5->D5_PRODUTO           
        TRB->LOTE    := QrySD5->D5_LOTECTL
     Else
        RecLock("TRB",.F.)
     Endif
     TRB->SD5 += QrySD5->D5_QUANT
     MsUnlock()
     DBSelectArea("QrySD5")
     DBSkip()
   Enddo
   DBCloseArea()

   IF cMsSQL
      cQuery := " SELECT DB_PRODUTO,DB_LOTECTL,ISNULL(SUM(CASE WHEN DB_TM<='500' OR SUBSTRING(DB_TM,1,2) IN ('DE','PR','MA')  THEN ABS(DB_QUANT)"
      cQuery += "                                   WHEN DB_TM >'500'                                              THEN ABS(DB_QUANT) * -1  END),0) AS DB_QUANT"
      cQuery += " FROM "+RETSQLNAME('SDB')+" WHERE DB_FILIAL='"+xFilial("SDB")+"' AND DB_LOCAL='"+MV_PAR03+"' AND D_E_L_E_T_ <> '*'"
      cQuery += " AND DB_ESTORNO= ' ' AND DB_ATUEST='S' AND DB_DATA >= '"+DTOS(dDataI)+"' AND DB_DATA <= '"+DTOS(dDataF)+"'"
   Else
      cQuery := " SELECT DB_PRODUTO,DB_LOTECTL,SUM(CASE WHEN DB_TM<='500' OR SUBSTR(DB_TM,1,2) IN ('DE','PR','MA')  THEN ABS(DB_QUANT)"
      cQuery += "                                       WHEN DB_TM >'500'                                              THEN ABS(DB_QUANT) * -1  END) AS DB_QUANT"
      cQuery += " FROM "+RETSQLNAME('SDB')+" WHERE DB_FILIAL='"+xFilial("SDB")+"' AND DB_LOCAL='"+MV_PAR03+"' AND D_E_L_E_T_ <> '*'"
      cQuery += " AND DB_ESTORNO= ' ' AND DB_ATUEST='S' AND DB_DATA >= '"+DTOS(dDataI)+"' AND DB_DATA <= '"+DTOS(dDataF)+"'"
   Endif
   IF !Empty(cProduto)
      cQuery += " AND DB_PRODUTO = '"+cProduto+"'"  
   Else           
      cQuery += " AND DB_PRODUTO >= '"+MV_PAR01+"' AND DB_PRODUTO <= '"+MV_PAR02+"'"
   Endif          
   cQuery += " GROUP BY DB_PRODUTO,DB_LOTECTL"
   cQuery := ChangeQuery(cQuery)
   DBUseArea(.T.,"TOPCONN",TCGENQRY(,,cQuery),"QrySDB",.F.,.T.)
   While !Eof()
     DBSelectArea("TRB")
     IF !DBSeek(QrySDB->DB_PRODUTO+QrySDB->DB_LOTECTL)
        RecLock("TRB",.T.)
        TRB->PRODUTO := QrySDB->DB_PRODUTO
        TRB->LOTE    := QrySDB->DB_LOTECTL
     Else
        RecLock("TRB",.F.)
     Endif
     TRB->SDB += QrySDB->DB_QUANT
     MsUnlock()
     DBSelectArea("QrySDB")
     DBSkip()
   Enddo
   DBCloseArea()
Endif

DBSelectArea("TRB")

IF Empty(cProduto)
   DBGotop()
Endif

While IIF(Empty(cProduto),!Eof(),!Eof() .AND. cProduto == TRB->PRODUTO)
  DBSelectArea("SB1")
  DBSetOrder(1)
  DBSeek(xFilial("SB1")+TRB->PRODUTO)
  
  RecLock("TRB",.F.)
  TRB->STATUS := "OK"
  Do Case 
    Case SB1->B1_RASTRO = "L" .AND. SB1->B1_LOCALIZ = "S" 
      IF MV_PAR05 == 1
         Do Case                            
            Case TRB->KAR == TRB->SD5 .AND. TRB->KAR == (TRB->SDB+TRB->MOVSDA) .AND. TRB->SD5 == (TRB->SDB+TRB->MOVSDA) .AND.;
                 TRB->SB2 == TRB->SB8 .AND. TRB->SB2 == (TRB->SBF+TRB->SLDSDA) .AND. TRB->SB8 == (TRB->SBF+TRB->SLDSDA) .AND.;
                 TRB->KAR == TRB->SB2 .AND. TRB->SD5 == TRB->SB8               .AND. (TRB->SDB+TRB->MOVSDA) == (TRB->SBF+TRB->SLDSDA); TRB->STATUS := "OK"
            Case TRB->KAR <> TRB->SD5 .OR. TRB->KAR <> (TRB->SDB+TRB->MOVSDA) .OR. TRB->SD5 <> (TRB->SDB+TRB->MOVSDA)  ; TRB->STATUS := "Problema"
            Case TRB->KAR <> TRB->SB2 .OR. TRB->SD5 <> TRB->SB8               .OR. TRB->SDB <> TRB->SBF                ; TRB->STATUS := "Problema"
            Case TRB->SB2 <> TRB->SB8 .OR. TRB->SB2 <> (TRB->SBF+TRB->SLDSDA) .OR. TRB->SB8 <> (TRB->SBF+TRB->SLDSDA)  ; TRB->STATUS := "Problema"
            Case TRB->SB9 <> TRB->SBJ                                                                                  ; TRB->STATUS := "Analisar"
            Case TRB->SB9 <> TRB->SBK .OR. TRB->SBJ <> TRB->SBK
                 IF TRB->SBJ < TRB->SBK
                    TRB->STATUS := "Problema"
                 Endif   
            Case TRB->MOVSDA <> TRB->SLDSDA; TRB->STATUS := "Problema"
         EndCase
      Else
         Do Case
            Case TRB->SD5 <> (TRB->SDB+TRB->MOVSDA) ; TRB->STATUS := "Problema"
            Case TRB->SB8 <> (TRB->SBF+TRB->SLDSDA) ; TRB->STATUS := "Problema"
            Case TRB->SD5 <> TRB->SB8               ; TRB->STATUS := "Problema"
            Case (TRB->SDB+TRB->MOVSDA) <> (TRB->SBF+TRB->SLDSDA); TRB->STATUS := "Problema"
            Case TRB->MOVSDA <> TRB->SLDSDA         ; TRB->STATUS := "Problema"                                        
            Case TRB->SBJ < TRB->SBK                ; TRB->STATUS := "Problema"                                        
          EndCase
      Endif   
    Case SB1->B1_LOCALIZ = "S" 
         Do Case                            
            Case TRB->KAR == (TRB->SDB+TRB->MOVSDA) .AND. TRB->SB2 == (TRB->SBF+TRB->SLDSDA) .AND. TRB->KAR == TRB->SB2 .AND. (TRB->SDB+TRB->MOVSDA) == (TRB->SBF+TRB->SLDSDA); TRB->STATUS := "OK"
            Case TRB->KAR <> (TRB->SDB+TRB->MOVSDA)             ; TRB->STATUS := "Problema"
            Case TRB->KAR <> TRB->SB2 .OR. TRB->SDB <> TRB->SBF ; TRB->STATUS := "Problema"
            Case TRB->SB2 <> (TRB->SBF+TRB->SLDSDA)             ; TRB->STATUS := "Problema"
            Case TRB->MOVSDA <> TRB->SLDSDA                     ; TRB->STATUS := "Problema"
         EndCase
    Case SB1->B1_RASTRO = "L" 
         Do Case                            
            Case TRB->KAR == TRB->SD5 .AND. TRB->SD5 == (TRB->SDB+TRB->MOVSDA) .AND. TRB->SB2 == TRB->SB8 .AND. TRB->KAR == TRB->SB2 .AND. TRB->SD5 == TRB->SB8; TRB->STATUS := "OK"
            Case TRB->KAR <> TRB->SD5                           ; TRB->STATUS := "Problema"
            Case TRB->KAR <> TRB->SB2 .OR. TRB->SD5 <> TRB->SB8 ; TRB->STATUS := "Problema"
            Case TRB->SB2 <> TRB->SB8                           ; TRB->STATUS := "Problema"
            Case TRB->SB9 <> TRB->SBJ                           ; TRB->STATUS := "Analisar"
         EndCase
    Otherwise
      IF TRB->KAR <> TRB->SB2
         TRB->STATUS := "Problema"
      Endif
  EndCase
  MsUnlock()
  DBSelectArea("TRB")
  DBSkip()
Enddo

RestArea(aArea)

Return


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Static Function AjustaSX1()                                                                                                                                       
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
Local aHelpPor01 := {'Produto Inicial.'}
Local aHelpPor02 := {'Produto Final.'}
Local aHelpPor03 := {'Informe o local.'}
Local aHelpPor04 := {'Tipo de Saldo'}
Local aHelpPor05 := {'Tipo de Analise.'}
Local aHelpPor06 := {'Tipo do Banco de Dados.'}

PutSx1(cPerg,'01','Produto De     ?','','','mv_ch1','C',15, 0, 0,'G','','SB1','','','mv_par01','','','','','','','','','','','','','','','','',aHelpPor01,aHelpPor01,aHelpPor01)
PutSx1(cPerg,'02','Produto Ate    ?','','','mv_ch2','C',15, 0, 0,'G','','SB1','','','mv_par02','','','','','','','','','','','','','','','','',aHelpPor02,aHelpPor02,aHelpPor02)
PutSx1(cPerg,'03','Local          ?','','','mv_ch3','C', 2, 0, 0,'G','',''   ,'','','mv_par03','','','','','','','','','','','','','','','','',aHelpPor03,aHelpPor03,aHelpPor03)                               
PutSx1(cPerg,'04','Tipo           ?','','','mv_ch4','N', 1, 0, 0,'C','',''   ,'','','mv_par04','Com Problemas','','','Sem Problemas','','','Ambos','','','','','','','','','',aHelpPor04,aHelpPor04,aHelpPor04)
PutSx1(cPerg,'05','Analise        ?','','','mv_ch5','N', 1, 0, 0,'C','',''   ,'','','mv_par05','Saldo','','','Saldo por Lote','','','','','','','','','','','','',aHelpPor05,aHelpPor05,aHelpPor05)
PutSx1(cPerg,'06','Banco de Dados ?','','','mv_ch5','N', 1, 0, 0,'C','',''   ,'','','mv_par06','MS-SQL','','','ORACLE','','','DB2','','','','','','','','','',aHelpPor06,aHelpPor06,aHelpPor06)
Return NIL