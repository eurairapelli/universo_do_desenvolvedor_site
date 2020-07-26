#INCLUDE "TOTVS.CH"

User Function aClone()
Local aInfo		:= {}
Local aCopy		:= {}

aAdd( aInfo, 'UniversoADVPL' )


aCopy := aClone( aInfo )

MsgInfo( aCopy[01], 'UniversoADVPL' )


Return( Nil )
