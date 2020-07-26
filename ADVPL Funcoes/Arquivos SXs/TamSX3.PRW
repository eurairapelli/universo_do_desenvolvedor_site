#INCLUDE "TOTVS.CH"

User Function TamSX3()
Local cCampo	:= 'A1_PESSOA'
Local aRet		:= TamSX3(cCampo)

MsgInfo( 'Valor: ' + cCampo ;
	+ CRLF + "Tamanho: " + cValtoChar( aRet[01] ) ; 
	+ CRLF + "Decimal: " + cValtoChar( aRet[02] ) ; 
	+ CRLF + "Tipo: " + cValtoChar( aRet[03] ) , 'UniversoADVPL' )

Return( Nil )