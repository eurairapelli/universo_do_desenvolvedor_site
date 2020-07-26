#INCLUDE "TOTVS.CH"

User Function FWCompany()

MsgInfo( 'FWCompany SA1: ' + FWCompany('SA1') + CRLF + ;
'FWCompany SE1: ' + FWCompany('SE1') + CRLF + ;
'FWCompany: ' + FWCompany() ;
, 'UniversoADVPL' )

Return( Nil )