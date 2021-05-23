#INCLUDE "TOTVS.CH"

Static cCRLF	:= CRLF

User Function dbSetIndex()
Local cDriver	:= __LocalDriver
Local cExtens	:= '.DTC'
Local cNomArq	:= "TESTE" + "9"+StrZero(Seconds(),5,0)
Local cIndArqA	:= Subs(cNomArq,1,7)+"A"
Local cIndArqB	:= Subs(cNomArq,1,7)+"B"
Local cIndArqC	:= Subs(cNomArq,1,7)+"C"
Local aCampos	:= {}


cQuery := cCRLF + "	SELECT  "
cQuery += cCRLF + "		 A1_COD,A1_NOME,A1_MUNC "
cQuery += cCRLF + "	FROM "
cQuery += cCRLF + RetSqlName("SA1") + " SA1 "
cQuery += cCRLF + "	WHERE "
cQuery += cCRLF + " 	SA1.D_E_L_E_T_ <> '*' "


aAdd( aCampos, { "A1_COD"	, "C", TamSX3("A1_COD")[1]	, TamSX3("A1_COD")[2] } )
aAdd( aCampos, { "A1_NOME"	, "C", TamSX3("A1_NOME")[1]	, TamSX3("A1_NOME")[2] } )
aAdd( aCampos, { "A1_MUNC"	, "C", TamSX3("A1_NOME")[1]	, TamSX3("A1_NOME")[2] } )


dbCreate( cNomArq, aCampos, cDriver )
dbUseArea( .T.,, cNomArq, 'TRB', .T., .F. )
IndRegua( 'TRB', cIndArqA,'A1_COD+A1_NOME',,,"Selecionando Registros...")
IndRegua( 'TRB', cIndArqB,'A1_NOME',,,"Selecionando Registros...")
IndRegua( 'TRB', cIndArqC,'A1_MUNC',,,"Selecionando Registros...")





dbClearIndex()

dbSetIndex( cIndArqA + OrdBagExt() )
dbSetIndex( cIndArqB + OrdBagExt() )
dbSetIndex( cIndArqC + OrdBagExt() )

SqlToTrb( cQuery, aCampos, 'TRB' )


TRB->( dbSetOrder( 3 ) )
TRB->( dbSeek( 'SBCAMPO        ' ) )

MsgInfo( TRB->A1_COD, 'UniversoADVPL' )

TRB->( dbCloseArea() )
If File( cNomArq + cExtens )     //Elimina o arquivo de trabalho
	
	Ferase( cNomArq + cExtens )
	Ferase( cIndArqA + OrdBagExt() )
	Ferase( cIndArqB + OrdBagExt() )
	Ferase( cIndArqC + OrdBagExt() )
	
Endif

Return( Nil )