#INCLUDE "TOTVS.CH"

User Function RC4Crypt()

MsgInfo( RC4Crypt('UniversoADVPL','0123456789', .T.) + CRLF + ;
RC4Crypt('UniversoADVPL', '0123456789', .F.) + CRLF + ;
RC4Crypt('UniversoADVPL', '0123456789!@#$%¨&*()', .T.) + CRLF + ;
RC4Crypt('UniversoADVPL', '0123456789!@#$%¨&*()', .F.), 'UniversoADVPL' )

Return( Nil )