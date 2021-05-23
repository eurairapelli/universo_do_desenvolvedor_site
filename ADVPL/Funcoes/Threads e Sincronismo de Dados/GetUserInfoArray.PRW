#INCLUDE "TOTVS.CH"

User Function GetUserInfoArray()
Local aInfo := GetUserInfoArray() // Resultado: (Informações dos processos)

VarInfo("Threads:",aInfo)
  
Return( Nil )