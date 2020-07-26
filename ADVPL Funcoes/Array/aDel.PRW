#INCLUDE "TOTVS.CH"

User Function aDel()
Local aInfo		:= {}


aAdd( aInfo, 'UniversoADVPL' )
aAdd( aInfo, 'Eurai Rapelli' )

aDel(aInfo, Len(aInfo) )


MsgInfo( aInfo[01], 'UniversoADVPL' )


Return( Nil )