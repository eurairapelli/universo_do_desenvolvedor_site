#INCLUDE "TOTVS.CH"

User Function fRename()
Local nRet	:= 0

nRet := fRename('C:\Temp\Origem.txt' , 'C:\Temp\Destino.txt' )
If nRet == -1
	MsgStop('Falha na operação 1 : FError ' + Str( fError(), 4 ), 'UniversoADVPL' )
Endif
  
Return( Nil )