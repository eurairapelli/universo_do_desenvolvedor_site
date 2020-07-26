#INCLUDE "TOTVS.CH"
#INCLUDE "DBINFO.CH"

User Function dbOrderInfo()

MsgInfo( 'DBOI_BagName:' + SC1->( dbOrderInfo(7) ) + CRLF + ;
		'DBOI_FullPath:' + SC1->( dbOrderInfo(20) ) + CRLF + ;
		'DBOI_OrderCount:' + cValtoChar( SC1->( dbOrderInfo(9) ) ) ;
, 'UniversoADVPL' )


Return( Nil )