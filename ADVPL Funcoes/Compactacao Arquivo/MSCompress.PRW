#INCLUDE "TOTVS.CH"

User Function MSCompress()
local cRet	:= ''
 
cRet	:= MsCompress( "\calculo.TXT", "calculo.MZP" )
If !Empty( cRet )
	Conout( 'Compactado com Sucesso' )
Endif
 
Return( Nil )