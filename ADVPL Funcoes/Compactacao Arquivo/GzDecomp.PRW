#INCLUDE "TOTVS.CH"

User Function GzDecomp()
Local lGzCompress	:= .F.
Local lGzDecomp		:= .F.
 
lGzCompress := GzCompress( "\Calculo.TXT", "\Arquivo.gz" )
If lGzCompress
	
	Conout( 'Compactado com Sucesso' )
	
	lGzDecomp := GzDecomp( "\Arquivo.gz", "\descompactado" )
	
	If lGzCompress
	
		Conout( 'Descompactado com Sucesso' )
	
	Endif
	
Endif
 
Return( Nil )