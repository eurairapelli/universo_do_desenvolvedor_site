#INCLUDE "TOTVS.CH"

User Function ExistUnico()

Private INCLUI	:= .T.

MsgInfo( 'ExistUnico: ' + cValtoChar( ExistUnico("SA1", '000001' + '01', 'Ja Existe' ) ) + CRLF + ;
'ExistUnico: ' + cValtoChar( ExistUnico("SA1",'ZZDD11' + 'ZZ', 'Não Existe' ) ) ;
 , 'UniversoADVPL' )

Return( Nil )