#INCLUDE "TOTVS.CH"

User Function VarSetGet()
Private cFil01	:= Nil
Private cFil02	:= Nil

VarSetGet( 'cFil01', { || MsgInfo('cFil01 UniversoADVPL - Executa','UniversoADVPL') }, .T. )
VarSetGet( 'cFil02', { || MsgInfo('cFil02 UniversoADVPL - Sem Executar','UniversoADVPL') }, .F. )

cFil01 := '01'
cFil02 := '02'


Return( Nil )