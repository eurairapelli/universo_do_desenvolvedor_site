#INCLUDE "TOTVS.CH"

User Function UAFWFilial()

MsgInfo( 'FWFilial: ' + FWFilial() + CRLF +;
'FWFilial SE1: ' + FWFilial('SE1') + CRLF +;
'FWFilial SA1: ' + FWFilial('SA1') ;
, 'UniversoADVPL' )

Return( Nil )