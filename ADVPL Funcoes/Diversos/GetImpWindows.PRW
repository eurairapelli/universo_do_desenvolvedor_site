#INCLUDE "TOTVS.CH"

User Function GetImpWindows()
Local aRet	:= GetImpWindows(.F.)

MsgInfo( "aRet: " + aRet[01], 'UniversoADVPL' )

Return( Nil )