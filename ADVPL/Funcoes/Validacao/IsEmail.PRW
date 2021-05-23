#INCLUDE "TOTVS.CH"

User Function IsEmail()

MsgInfo( 'IsEmail: ' + cValtoChar( IsEmail("universoadvpl@uni" ) ) + CRLF + ;
'IsEmail: ' + cValtoChar( IsEmail("universoadvpl@universoadvpl.com" ) ) ;
 , 'UniversoADVPL' )

Return( Nil )