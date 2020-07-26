#INCLUDE "TOTVS.CH"

User Function GetCBSource()
Local bBloco	:= {|UA| MsgInfo( 'UniversoADVPL', UA )  }

MsgInfo( GetCBSource(bBloco), 'UniversoADVPL' )


Return( Nil )