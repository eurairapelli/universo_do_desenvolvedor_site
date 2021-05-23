#INCLUDE "TOTVS.CH"

User Function UAErrorBlock()
Local nVal		:= 0
Local bError 	:= ErrorBlock( { |e| MsgAlert( e:Description, 'UniversoADVPL' ) } )

nVal := Val( 2 )

ErrorBlock(bError)

Return( Nil )