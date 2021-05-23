#INCLUDE "TOTVS.CH"

User Function DlgToExcel()
Local aCabec		:= {}
Local aItens		:= {}


aAdd(aCabec, {"A1_FILIAL" 	,"C", 02, 00} )
aAdd(aCabec, {"A1_COD" 		,"C", 06, 00} )
aAdd(aCabec, {"A1_LOJA" 	,"C", 02, 00} )
aAdd(aCabec, {"A1_NOME" 	,"C", 40, 00} )

MsgRun("Favor Aguardar.....", "Selecionando os Registros", {|| LoadInfo( aCabec, aItens ) } )
MsgRun("Favor Aguardar.....", "Exportando os Registros para o Excel", {|| DlgToExcel({{"GETDADOS", "Exportação", aCabec,aItens } } ) } )

Return( Nil )

Static Function LoadInfo( aCabec, aItens )
Local nX	:= 0

Local aItem	:= {}

dbSelectArea("SA1")

Do While SA1->( !EOF() )

	aItem := Array( Len(aCabec) )
	
	For nX := 1 to Len(aCabec)
		
		If aCabec[nX][2] == "C"
			aItem[nX] := Chr(160) + SA1->&(aCabec[nX,01])
		Else
			aItem[nX] := SA1->&(aCabec[nX,01])
		Endif
		
	Next nX
	
	aAdd( aItens, aItem )
	
	SA1->( dbSkip() )
EndDo

Return( Nil )