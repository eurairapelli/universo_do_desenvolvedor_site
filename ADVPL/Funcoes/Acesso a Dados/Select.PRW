#INCLUDE "TOTVS.CH"

User Function Select()
Local aRet		:= {}

aAdd( aRet, Select('SA1') )

dbSelectArea('SA1')

aAdd( aRet, Select('SA1') )

VarInfo( 'Select', aRet )

Return( Nil )