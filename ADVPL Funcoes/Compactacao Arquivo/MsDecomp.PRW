#INCLUDE "TOTVS.CH"

User Function MsDecomp()
local cRet	:= ''
 
cRet	:= MsCompress( "\calculo.TXT", "\calculo.MZP" )
If !Empty( cRet )
	
	Conout( 'Compactado com Sucesso' )
	
	If MsDecomp( '\calculo.MZP', '\descompactar' )
		Conout( 'Descompactado com Sucesso' )
	Endif
	
Endif
 
Return( Nil )