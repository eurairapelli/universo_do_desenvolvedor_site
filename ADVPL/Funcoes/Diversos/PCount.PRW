#INCLUDE "TOTVS.CH"

User Function UCount()

UCount( 'UA' )
UCount( 'UA', 'UA' )
UCount( 'UA', 'UA', 'UA', 'UA' )

Return( Nil )

Static Function UCount()

MsgInfo( 'Qtd Param: ' + cValtoChar( PCount() ), 'UniversoADVPL' ) 

Return( Nil )