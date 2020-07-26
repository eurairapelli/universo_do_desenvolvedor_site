#INCLUDE "TOTVS.CH"

User Function UAFwIsInCallStack()


MsgInfo( 'FwIsInCallStack: ' + cValtoChar( FwIsInCallStack( 'U_UATOOLS' ) ) + CRLF + ;
'FwIsInCallStack: ' + cValtoChar( FwIsInCallStack( 'SIGAMDI' ) ) ;
 , 'UniversoADVPL' )

Return( Nil )