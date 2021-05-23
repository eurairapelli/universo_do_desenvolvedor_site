#INCLUDE "TOTVS.CH"

User Function CHMOD()

CHMOD( cFileName , 666 )	// Em linux, direitos de escrita e leitura.
CHMOD( cFileName, 2 )		// Em windows, direito de escrita ( Remove flag de "somente leitura" caso esteja setado )
  
Return( Nil )