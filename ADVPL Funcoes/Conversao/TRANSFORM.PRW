#INCLUDE "TOTVS.CH"

User Function Transf()

MsgInfo( 'Retorno: ' + Transform("maiúscula", "@!")  ;
	+ CRLF + 'Retorno: ' + Transform( 9376.12, "@E 9,999,999.99") , 'UniversoADVPL' )

Return( Nil )