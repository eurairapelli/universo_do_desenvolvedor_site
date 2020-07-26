#INCLUDE "TOTVS.CH"

User Function GetClassName()
Local oSay01	:= TSay():New( 010,005,{|| "UA:" },GetWndDefault(),,,.F.,.F.,.F.,.T.,,,550,008)

MsgInfo( GetClassName( oSay01 ) )

Return( Nil )