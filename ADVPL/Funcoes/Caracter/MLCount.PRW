#INCLUDE "TOTVS.CH"

User Function MLCount()
Local cTexto	:= 'UniversoADVPL Eurai Rapelli  '

cTexto	+= 'UniversoADVPL 01 Eurai Rapelli 01  '
cTexto	+= 'UniversoADVPL 02 Eurai Rapelli 02  '

MsgInfo( 'MLCount: ' + cValtoChar( MLCount(cTexto, 15 ) ), 'UniversoADVPL' )

Return( Nil )