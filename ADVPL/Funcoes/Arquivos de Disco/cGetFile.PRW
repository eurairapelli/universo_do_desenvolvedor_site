#INCLUDE "TOTVS.CH"

User Function cGetFile()
Local cArq	:= ''	
 
cArq	:= cGetFile( '*.*' , 'Arquivos', 1, 'C:\', .F., nOR( GETF_LOCALHARD, GETF_LOCALFLOPPY, GETF_RETDIRECTORY ),.T., .T. )

If !Empty( cArq )
 
	MsgInfo( cArq, 'UniversoADVPL' )
	
Endif

Return( Nil )