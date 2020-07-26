#INCLUDE "TOTVS.CH"

Static cCRLF	:= CRLF

User Function TCGenQry()
Local cQuery	:= ""


If Select("Qry1") > 0//Verifica se ja existe alias criado
	Qry1->( dbCloseArea() )
Endif

cQuery := cCRLF + "	SELECT  "
cQuery += cCRLF + "		A1_NOME "
cQuery += cCRLF + "	FROM "
cQuery += cCRLF + RetSqlName("SA1") + " SA1 "
cQuery += cCRLF + "	WHERE "
cQuery += cCRLF + " 	SA1.D_E_L_E_T_ <> '*' "

DbUseArea(.T.,"TOPCONN",TcGenQry(,,ChangeQuery(cQuery)),"Qry1",.T.,.T.)


If Qry1->( !EOF() )
	
	MsgInfo( 'Query Dados', 'UniversoADVPL' )
	
Endif



Return( Nil )