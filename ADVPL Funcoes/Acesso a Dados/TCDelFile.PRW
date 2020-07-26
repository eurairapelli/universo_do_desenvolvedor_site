#INCLUDE "TOTVS.CH"

User Function TCDelFile()


If TCDelFile( RetSQLName('TCC') )

	MsgInfo( 'Deletado', 'UniversoADVPL' )
	
Else

	MsgInfo( 'Erro', 'UniversoADVPL' )

Endif


Return( Nil )