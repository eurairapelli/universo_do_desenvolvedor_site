#INCLUDE "TOTVS.CH"

User Function TarCompress()
Local cNomeArq	:= ''
Local aItens	:= {}
 
aAdd( aItens, "\calculo.txt" )
aAdd( aItens, "\path\calculo.LOG" )
 

cNomeArq := tarCompress( aItens, "\arquivos.tar" )
If !Empty( cNomeArq )

	Conout( 'Compactado com Sucesso' )

Endif
 
Return( Nil )