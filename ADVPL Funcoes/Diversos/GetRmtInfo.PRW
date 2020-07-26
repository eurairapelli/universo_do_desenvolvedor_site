#INCLUDE "TOTVS.CH"

User Function GetRmtInfo()
Local cInfoComp	:= ''
Local aInfoComp := GetRmtInfo()
     
cInfoComp:= 'Nome do Computador: ' + aInfoComp[1]+ CRLF +;
            'Sistema Operacional: ' + aInfoComp[2]+ CRLF +;
            'Informação adicional: ' + aInfoComp[3]+ CRLF +;
            'Memória: ' + aInfoComp[4]+ CRLF +;
            'Nr. de Processadores: ' + aInfoComp[5]+ CRLF +;
            'MHZ Processador: ' + aInfoComp[6]+ CRLF +;
            'Descrição Processador: ' + aInfoComp[7]+ CRLF +;
            'Linguagem: ' + aInfoComp[8] + CRLF +;
            'Navegador: ' +  aInfoComp[9]

MsgInfo( "cInfoComp: " + cInfoComp, 'UniversoADVPL' )

Return( Nil )