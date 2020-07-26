#INCLUDE "TOTVS.CH"

User Function FRenameEx()
Local nRet	:= 0

nRet := FRenameEx('C:\Temp\Origem.txt' , 'C:\Temp\Destino.txt' )
If nRet == -1
	MsgStop('Falha na operação 1 : FError ' + Str( fError(), 4 ), 'UniversoADVPL' )
Endif
  
Return( Nil )