#INCLUDE "TOTVS.CH"

User Function ExistDir()

Conout( 'C:\TEMP: ' + cValtoChar( ExistDir( "C:\TEMP" ) ) )
Conout( 'system: ' + cValtoChar( ExistDir( "\system" ) ) )
Conout( 'ssdd: ' + cValtoChar( ExistDir( "\ssdd" ) ) )

Return( Nil )