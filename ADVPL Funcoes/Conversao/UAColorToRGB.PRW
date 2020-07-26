#INCLUDE "TOTVS.CH"
#INCLUDE "COLORS.CH"

User Function UAColorToRGB()
Local aColors	:= ColorToRGB(CLR_HRED)

MsgInfo( 'Red: ' + cValtoChar( aColors[01] ) ; 
	+ CRLF + 'Green: ' + cValtoChar( aColors[02] ) ; 
	+ CRLF + 'Blue: ' + cValtoChar( aColors[03] ) ;
	+ CRLF + 'Alpha: ' + cValtoChar( aColors[04] ) , 'UniversoADVPL' )

Return( Nil )