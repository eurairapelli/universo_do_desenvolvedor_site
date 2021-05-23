#INCLUDE "TOTVS.CH"

User Function GetSrvInfo()
Local cDetails	:= ''
Local nI		:= 0
Local aSrvrInfo := GetSrvInfo()

cDetails := aSrvrInfo[01] + CRLF // Nome do servidor
cDetails += aSrvrInfo[02] + CRLF // Sistema Operacional
cDetails += aSrvrInfo[03] + CRLF // Informações adicionais do sistema operacional  
cDetails += aSrvrInfo[04] + CRLF // Memória
cDetails += aSrvrInfo[05] + CRLF // Número de processadores
cDetails += aSrvrInfo[06] + CRLF // Velocidade do processador
cDetails += aSrvrInfo[07] + CRLF // Identificação do processador
cDetails += aSrvrInfo[08] + CRLF // Locale do sistema operacional
cDetails += aSrvrInfo[09] + CRLF // Nome do locale do sistema operacional
cDetails += aSrvrInfo[10] + CRLF // SMBIOS UUID/Host ID

For nI := 1 to Len(aSrvrInfo[11])
    cDetails += " " + aSrvrInfo[11,nI,01] + CRLF // Nome da interface
    cDetails += " " + aSrvrInfo[11,nI,02] + CRLF // Mac Address da interface
Next nI

MsgInfo( "GetSrvInfo: " + cDetails, 'UniversoADVPL' )

Return( Nil )