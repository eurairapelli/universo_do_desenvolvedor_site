#INCLUDE "TOTVS.CH"

User Function RollBackSx8()
Local cLog		:= ''

cLog += 'GETSXENUM 1: ' + GETSXENUM('SA1','A1_COD')
cLog += CRLF + 'GETSXENUM 2: ' + GETSXENUM('SA1','A1_COD')
RollBackSx8()
cLog += CRLF + 'RollBackSx8: ' + GETSXENUM('SA1','A1_COD')

MsgInfo( 'RollBackSx8: ' + cLog, 'UniversoADVPL' )

Return( Nil )