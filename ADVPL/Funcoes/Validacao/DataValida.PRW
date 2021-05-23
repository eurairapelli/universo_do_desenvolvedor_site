#INCLUDE "TOTVS.CH"

User Function DataValida()


MsgInfo( 'DataValida: ' + cValtoChar( DataValida( Date() ) ) + CRLF + ;
'DataValida: ' + cValtoChar( DataValida( Date(), .F. ) ) ;
 , 'UniversoADVPL' )

Return( Nil )