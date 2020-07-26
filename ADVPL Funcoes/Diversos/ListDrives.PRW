#INCLUDE "TOTVS.CH"

User Function ListDrives()
Local aUnits 	:= {}
Local aTypes	:= {}
Local nI		:= 0
   
ListDrives( aUnits, aTypes, 0 )
For nI := 1 to Len( aUnits )
	Conout( aUnits[nI] + ' - ' + cValtoChar( aTypes[nI] ) )
Next nI

Return( Nil )