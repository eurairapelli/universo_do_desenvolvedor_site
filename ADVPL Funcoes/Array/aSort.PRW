#INCLUDE "TOTVS.CH"

User Function aSort()
Local aInfo		:= Array(4)

AFILL( aInfo, 'UniversoADVPL',, 2 )
AFILL( aInfo, 'Eurai Rapelli',3, 2 )
aSort( aInfo, , , {|x,y| x < y } )
MsgInfo( ATAIL[01], 'UniversoADVPL' )


Return( Nil )