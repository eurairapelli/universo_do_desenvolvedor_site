#INCLUDE "TOTVS.CH"

User Function ConfirmSX8()
Local cLog		:= ''

cLog += 'Antes Confirm: ' + GETSXENUM('SA1','A1_COD')
ConfirmSX8()
cLog += CRLF + 'Depois Confirm: ' + GETSXENUM('SA1','A1_COD')

MsgInfo( 'GETSXENUM: ' + cLog, 'UniversoADVPL' )

Return( Nil )