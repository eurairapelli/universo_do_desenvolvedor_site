#INCLUDE "TOTVS.CH"

User Function MsRename()
Local cFile 	:= '\DATA\XXX.DBF'
Local cFileRen 	:= '\DATA\ZZZ.DBF'

If !MsRename(cFile, cFileRen)	

	MsgInfo("O arquivo não pode ser renomeado.", 'UniversoADVPL')
	
Endif
  
Return( Nil )