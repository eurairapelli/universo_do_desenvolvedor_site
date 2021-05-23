#INCLUDE "TOTVS.CH"

User Function MemoLine()
Local cTexto	:= 'UniversoADVPL Eurai Rapelli  '
Local nI		:= 1

cTexto	+= 'UniversoADVPL 01 Eurai Rapelli 01  '
cTexto	+= 'UniversoADVPL 02 Eurai Rapelli 02  '

For nI := 1 to MLCount( cTexto, 15 )

	Conout( MemoLine( cTexto, 15, nI )  )

Next nI

Return( Nil )