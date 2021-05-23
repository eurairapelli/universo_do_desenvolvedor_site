#INCLUDE "TOTVS.CH"

User Function ValType()
Local cTexto	:= 'Eurai'
Local nValor	:= 0 
Local bBloco	:= {|| MsgAlert('ADVPL', 'UniversoADVPL') }
Local dDate		:= Date()
Local lRet		:= .T.
Local aArray	:= {}
Local oUALIB	:= UALIB():New()
Local xRet		:= Nil

MsgInfo( 'ValType: ' + ValType( cTexto ) + CRLF + ;
'ValType: ' + ValType( nValor ) + CRLF + ;
'ValType: ' + ValType( bBloco ) + CRLF + ;
'ValType: ' + ValType( dDate ) + CRLF + ;
'ValType: ' + ValType( lRet ) + CRLF + ;
'ValType: ' + ValType( xRet ) + CRLF + ;
'ValType: ' + ValType( aArray )  ;
 , 'UniversoADVPL' )

Return( Nil )