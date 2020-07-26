#INCLUDE "TOTVS.CH"


Static cCRLF	:= CRLF


User Function TCSetField()
Local cQuery	:= ""

If Select("Qry1") > 0//Verifica se ja existe alias criado
	Qry1->( dbCloseArea() )
Endif

cQuery := cCRLF + "	SELECT  "
cQuery += cCRLF + "		A1_MSALDO "
cQuery += cCRLF + "	FROM "
cQuery += cCRLF + RetSqlName("SA1") + " SA1 "
cQuery += cCRLF + "	WHERE "
cQuery += cCRLF + " 	SA1.D_E_L_E_T_ <> '*' "

DbUseArea(.T.,"TOPCONN",TcGenQry(,,ChangeQuery(cQuery)),"Qry1",.T.,.T.)

TCSetField( 'Qry1', 'A1_MSALDO', 'N', TamSX3('A1_MSALDO')[01], TamSX3('A1_MSALDO')[02] ) 

If Qry1->( !EOF() )
	
	MsgInfo( cValtoChar( Qry1->A1_MSALDO ), 'UniversoADVPL' )
	
Endif


Return( Nil )