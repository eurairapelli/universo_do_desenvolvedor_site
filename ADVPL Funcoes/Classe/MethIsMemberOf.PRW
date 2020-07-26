#INCLUDE "TOTVS.CH"

User Function MethIsMemberOf()
Local oSay01	:= TSay():New( 010,005,{|| "UA:" },GetWndDefault(),,,.F.,.F.,.F.,.T.,,,550,008)

VarInfo( 'SetText: ', cValtoChar( MethIsMemberOf( oSay01, "SetText") ) )
VarInfo( 'lTransparent: ', cValtoChar( MethIsMemberOf( oSay01, "lTransparent") ) )
VarInfo( 'XXX: ', cValtoChar( MethIsMemberOf( oSay01, "XXXX") ) )

Return( Nil )