#INCLUDE "TOTVS.CH"

User Function Type()
Private cTexto	:= 'Eurai'
Private nValor	:= 0 
Private bBloco	:= {|| MsgAlert('ADVPL', 'UniversoADVPL') }
Private dDate	:= Date()
Private lRet	:= .T.
Private aArray	:= {}

MsgInfo( 'TYPE: ' + Type( "cTexto" ) + CRLF + ;
'TYPE: ' + Type( "nValor" ) + CRLF + ;
'TYPE: ' + Type( "bBloco" ) + CRLF + ;
'TYPE: ' + Type( "dDate" ) + CRLF + ;
'TYPE: ' + Type( "lRet" ) + CRLF + ;
'TYPE: ' + Type( "cTipo" ) + CRLF + ;
'TYPE: ' + Type( "aArray" ) + CRLF + ;
'TYPE: ' + Type( "Val('c')" ) ;
 , 'UniversoADVPL' )

Return( Nil )