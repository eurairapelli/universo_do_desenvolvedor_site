#INCLUDE "TOTVS.CH"

User Function ExistChav()

MsgInfo( 'ExistChav: ' + cValtoChar( ExistChav("SA1", '000001' + '01', 1, "EXISTCLI") ) + CRLF + ;
'ExistChav: ' + cValtoChar( ExistChav("SA1",'ZZDD11' + 'ZZ', 1, "EXISTCLI") ) ;
 , 'UniversoADVPL' )

Return( Nil )