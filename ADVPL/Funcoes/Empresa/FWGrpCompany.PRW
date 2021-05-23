#INCLUDE "TOTVS.CH"

User Function FWModeAccess()

MsgInfo( 'FWModeAccess SA1: ' + FWModeAccess('SA1') + CRLF + ;
'FWModeAccess SE1: ' + FWModeAccess('SE1') + CRLF + ;
'FWModeAccess SE1: ' + FWModeAccess('SE1', 1) ;
, 'UniversoADVPL' )

Return( Nil )