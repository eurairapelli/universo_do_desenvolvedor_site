#INCLUDE "TOTVS.CH"

User Function NaoVazio()

MsgInfo( 'NaoVazio: ' + cValtoChar( NaoVazio("") ) + CRLF + ;
'NaoVazio: ' + cValtoChar( NaoVazio("Eurai Rapelli") ) ;
 , 'UniversoADVPL' )

Return( Nil )