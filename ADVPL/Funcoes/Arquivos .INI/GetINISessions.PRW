#INCLUDE "TOTVS.CH"

User Function GetINISessions()
Local aRet	:= GetINISessions( GetAdv97() )

MsgInfo( aRet[01], 'UniversoADVPL' )

Return( Nil )