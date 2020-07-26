#INCLUDE "TOTVS.CH"

User Function tarDecomp()
Local cNomeArq	:= ''tarDecomp
Local aItens	:= {}
 
aAdd( aItens, "\calculo.txt" )
aAdd( aItens, "\path\calculo.LOG" )
 

cNomeArq := tarCompress( aItens, "\arquivos.tar" )
If !Empty( cNomeArq )

	Conout( 'Compactado com Sucesso' )
	
	If tarDecomp( "\arquivos.tar", "\descompactar" )
	
		Conout( 'Descompactado com Sucesso' )
	
	Endif

Endif
 
Return( Nil )