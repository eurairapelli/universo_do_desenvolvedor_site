#INCLUDE "TOTVS.CH"

User Function DirRemove()

If DirRemove( "C:\TEMP\" )
	Conout( 'Removido com Sucesso' )
Endif
  
Return( Nil )