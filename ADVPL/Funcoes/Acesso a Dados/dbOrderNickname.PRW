#INCLUDE "TOTVS.CH"

User Function dbOrderNickname()

If !SC1->( dbOrderNickname("GCP01") )
	MsgInfo( 'Sem Indice', 'UniversoADVPL' )
Endif

If !SC1->( dbOrderNickname("XXXX") )
	MsgInfo( 'Sem Indice', 'UniversoADVPL' )
Endif

Return( Nil )