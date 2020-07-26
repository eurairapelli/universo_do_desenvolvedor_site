#INCLUDE "TOTVS.CH"

User Function MemoRead()
Local cLine		:= MemoRead( "C:\TEMP\TST.log" )
Local nLines	:= MLCount( cLine )
Local nX		:= 0
   
// Varre todas as linhas do texto
For nX := 1 To nLines
	MsgAlert( MemoLine( cLine, , nX ) )
Next nX


Return( Nil )