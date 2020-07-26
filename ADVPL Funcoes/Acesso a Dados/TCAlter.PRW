#INCLUDE "TOTVS.CH"

User Function TCAlter()
Local nPos		:= 0
Local nErro		:= 0

Local aAtual	:= {}
Local aNovo		:= {}

aAtual 	:= SA1->( dbStruct() )
aNovo	:= aClone( aAtual )

SA1->( dbCloseArea() )

If ( nPos := aScan( aNovo, { |UA| AllTrim( UA[01] ) == 'A1_NOME'  } ) ) > 0 

	Conout( 'Tamanho Old: ' + cValtoChar( aNovo[nPos,03] ) )//Caracter == 40
	aNovo[nPos,03]	:= 50
	VarInfo( 'aNovo', aNovo )


	If !TCAlter( RetSQLName('SA1'), aAtual, aNovo, @nErro )
		MsgInfo( TCSQLError() + CRLF + 'Numero Erro: ' + Str( nErro ) , "UniversoADVPL" )
	Endif

Endif



Return( Nil )