#INCLUDE "TOTVS.CH"

User Function RunTrigger()

//Para Enchoice

If ExistTrigger('C5_CLIENTE')
	RunTrigger(1,Nil,Nil,,'C5_CLIENTE')
Endif

//Para aCols:

If ExistTrigger("C6_PRODUTO")
	RunTrigger( 2, Len(aCols) )
Endif

//OU

If ExistTrigger("C6_PRODUTO")
	RunTrigger( 2, Len(aCols),, "C6_PRODUTO" )
EndIf

//OU

If ExistTrigger("C6_PRODUTO")
	RunTrigger( 2, n,, "C6_PRODUTO" )
EndIf

//OU

If ExistTrigger("C6_PRODUTO")
	RunTrigger( 2, nI,, "C6_PRODUTO" )
EndIf

Return( Nil )