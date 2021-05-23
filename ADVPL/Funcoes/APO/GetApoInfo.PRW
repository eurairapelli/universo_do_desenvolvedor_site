#INCLUDE "TOTVS.CH"

User Function GetApoInfo()
Local aRet	:= {}
  
aRet := GetApoInfo('ConPad1.PRW')

MsgInfo( "Nome do fonte: " + aRet[1] + CRLF + ;
"Linguagem do fonte: " + aRet[2] + CRLF + ;
"Modo de Compilação: " + aRet[3] + CRLF + ;
"Data da última modificação: " + Dtoc(aRet[4]) + CRLF + ;
"Hora da última modificação: " + aRet[5], 'UniversoADVPL' )

Return( Nil )