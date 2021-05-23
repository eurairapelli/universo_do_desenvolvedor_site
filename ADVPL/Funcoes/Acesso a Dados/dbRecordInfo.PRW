#INCLUDE "TOTVS.CH"

User Function dbRecordInfo()
Local nRecno		:= 2

dbSelectArea('SA1')

SA1->( dbGoTo( nRecno ) )

MsgInfo( 'DBRI_DELETED:' + cValtoChar( dbRecordInfo(1) ) + CRLF + ;
		'DBRI_LOCKED:' + cValtoChar( dbRecordInfo(2) ) + CRLF + ;
		'DBRI_RECSIZE:' + cValtoChar(  dbRecordInfo(3) ) + CRLF + ;
		'DBRI_RECNO:' + cValtoChar(  dbRecordInfo(4) ) + CRLF + ;
		'DBRI_UPDATED:' + cValtoChar( dbRecordInfo(5) ) ;
, 'UniversoADVPL' )	



Return( Nil )