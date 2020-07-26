#INCLUDE "TOTVS.CH"

User Function FreeObj()
Local oSay01	:= TSay():New( 010,005,{|| "UA:" },GetWndDefault(),,,.F.,.F.,.F.,.T.,,,550,008)

FreeObj( oSay01 )

Return( Nil )