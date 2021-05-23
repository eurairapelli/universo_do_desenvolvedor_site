#INCLUDE "TOTVS.CH"

User Function Set()

Set(_SET_DATEFORMAT, 'mm/dd/yy')

MsgInfo( "Set: " + Dtoc( Date() ), 'UniversoADVPL' )

Return( Nil )