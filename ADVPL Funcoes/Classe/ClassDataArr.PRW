#INCLUDE "TOTVS.CH"

User Function ClassDataArr()
Local oSay01	:= TSay():New( 010,005,{|| "UA:" },GetWndDefault(),,,.F.,.F.,.F.,.T.,,,550,008)

VarInfo( 'TSay: ', ClassDataArr( oSay01 ) )

Return( Nil )