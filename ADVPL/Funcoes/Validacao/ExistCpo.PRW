#INCLUDE "TOTVS.CH"

User Function ExistCpo()

MsgInfo( 'ExistCpo: ' + cValtoChar( ExistCpo("SA1", '000001' + '01', 1 ) ) + CRLF + ;
'ExistCpo: ' + cValtoChar( ExistCpo("SA1",'ZZDD11' + 'ZZ', 1 ) ) ;
 , 'UniversoADVPL' )

Return( Nil )