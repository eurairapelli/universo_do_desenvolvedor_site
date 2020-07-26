#INCLUDE "TOTVS.CH"

User Function ELAPTIME()
Local cTime	:= Time()

Sleep(2000)

MsgInfo( 'Retorno: ' + ELAPTIME( cTime, Time() ), 'UniversoADVPL' )

Return( Nil )