#INCLUDE "TOTVS.CH"

User Function IsInCallStack()


MsgInfo( 'IsInCallStack: ' + cValtoChar( IsInCallStack( 'U_UATOOLS' ) ) + CRLF + ;
'IsInCallStack: ' + cValtoChar( IsInCallStack( 'SIGAMDI' ) ) ;
 , 'UniversoADVPL' )

Return( Nil )