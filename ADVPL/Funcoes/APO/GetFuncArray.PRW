#INCLUDE "TOTVS.CH"

User Function GetFuncArray()
Local aRet	:= {}
Local aType	:= {}
Local aFile	:= {}
Local aLine	:= {}
Local aDate	:= {}
Local aTime	:= {}
  
aRet := GetFuncArray('U_MemGlbSize', aType, aFile, aLine, aDate,aTime)

MsgInfo( "Funcao: " + aRet[1] + CRLF + ;
"Arquivo: " + aFile[1] + CRLF + ;
"Linha: " + aLine[1] + CRLF + ;
"Tipo: " + aType[1] + CRLF + ;
"Data: " + Dtoc(aDate[1]) + CRLF + ;
"Hora: " + aTime[1], 'UniversoADVPL' )

Return( Nil )