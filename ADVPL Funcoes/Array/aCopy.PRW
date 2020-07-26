#INCLUDE "TOTVS.CH"

User Function aCopy()
Local aInfo		:= {}
Local aCopy		:= Array(6)

aAdd( aInfo, 'UniversoADVPL' )
aAdd( aInfo, 'UniversoADVPL' )
aAdd( aInfo, 'Eurai' )
aAdd( aInfo, 'Eurai' )
aAdd( aInfo, 'Rapelli' )
aAdd( aInfo, 'Rapelli' )
aAdd( aInfo, 'ADVPL' )
aAdd( aInfo, 'ADVPL' )
aAdd( aInfo, 'UniversoADVPL' )
aAdd( aInfo, 'UniversoADVPL' )

aCopy( aInfo, aCopy, 3, 6 )

MsgInfo( aCopy[01] + CRLF + ;
			aCopy[02] + CRLF + ;
			aCopy[03] + CRLF + ;
			aCopy[04] + CRLF + ;
			aCopy[05] + CRLF + ;
			aCopy[06] + CRLF;
			, 'UniversoADVPL' )



Return( Nil )
