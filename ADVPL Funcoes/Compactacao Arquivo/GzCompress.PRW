#INCLUDE "TOTVS.CH"

User Function GzCompress()
local lGzCompress	:= .F.
 
lGzCompress := GzCompress( "\Calculo.TXT", "\Arquivo.gz" )
If lGzCompress
	Conout( 'Compactado com Sucesso' )
Endif
 
Return( Nil )