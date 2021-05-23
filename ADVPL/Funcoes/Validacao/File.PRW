#INCLUDE "TOTVS.CH"

User Function File()

Conout( 'C:\TEMP: ' + cValtoChar( File( "C:\TEMP\AA.TXT" ) ) )
Conout( 'system: ' + cValtoChar( File( "\system\SX3990.DTC" ) ) )
Conout( 'ssdd: ' + cValtoChar( File( "\ssdd.AAA" ) ) )

Return( Nil )