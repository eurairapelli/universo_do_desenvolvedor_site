#INCLUDE "TOTVS.CH"

User Function dbCreateIndex()
Local cNomArq	:= ''
Local cSeconds 	:= "9"+StrZero(Seconds(),5,0)
Local aCampos	:= {}


Local cIndice 	:= "ZZ1_USER+ZZ1_NOME"
Local cInd01 	:= GetNextAlias()


aAdd( aCampos, { 'ZZ1_USER'		, 'C', TamSX3('ZZ1_USER')[01]	, TamSX3('ZZ1_USER')[02] } )
aAdd( aCampos, { 'ZZ1_NOME'		, 'C', TamSX3('ZZ1_NOME')[01]	, TamSX3('ZZ1_NOME')[02] } )

cNomArq := "GeraTMP_SC" + cSeconds //CriaTrab(aCampos)
dbCreate( cNomArq, aCampos, __LocalDriver )
dbUseArea( .T.,, cNomArq, "TRB", .F., .F. )



//INDICE
TCDelFile(cInd01)
dbCreateIndex( cInd01, cIndice, {|| cIndice }, .F. )

Return( Nil )