#INCLUDE "TOTVS.CH"

User Function AEval()
Local aInfo		:= {}

aAdd( aInfo, 'UniversoADVPL1' )
aAdd( aInfo, 'UniversoADVPL2' )
aAdd( aInfo, 'UniversoADVPL3' )
aAdd( aInfo, 'UniversoADVPL4' )
aAdd( aInfo, 'UniversoADVPL5' )
aAdd( aInfo, 'UniversoADVPL6' )

AEval( aInfo, { |UA| Conout(UA)  } )

AEval( aInfo, { |UA| Conout(UA)  },3 , 2 )

Return( Nil )