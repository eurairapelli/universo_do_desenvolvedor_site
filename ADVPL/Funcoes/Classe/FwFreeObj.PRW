#INCLUDE "TOTVS.CH"

User Function FwFreeObj()
Local oSay01	:= TSay():New( 010,005,{|| "UA:" },GetWndDefault(),,,.F.,.F.,.F.,.T.,,,550,008)

FwFreeObj( oSay01 )

Return( Nil )
