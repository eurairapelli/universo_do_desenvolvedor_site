#INCLUDE "TOTVS.CH"

User Function AttIsMemberOf()
Local oSay01	:= TSay():New( 010,005,{|| "UA:" },GetWndDefault(),,,.F.,.F.,.F.,.T.,,,550,008)

VarInfo( 'SetText: ', cValtoChar( AttIsMemberOf( oSay01, "SetText") ) )
VarInfo( 'lTransparent: ', cValtoChar( AttIsMemberOf( oSay01, "lTransparent") ) )
VarInfo( 'XXX: ', cValtoChar( AttIsMemberOf( oSay01, "XXXX") ) )

Return( Nil )