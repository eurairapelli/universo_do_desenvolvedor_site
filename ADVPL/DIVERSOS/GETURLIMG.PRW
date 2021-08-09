#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} GETURLIMG
Salva imagem por URL
 
@author     Eurai Rapelli
@since      06/05/2015
 
@param      cUrl , Caracter , Endereço HTTP
@return     cCaminho , Caracter , Local onde foi armazenado arquivo
 
@example    U_GetUrlImg( 'https://udesenv.com.br/assets/images/universo-desenvolvedor-logo-320.webp' )
 
@see        http://www.udesenv.com.br
 
@obs        Conteudo pode ser utilizado desde que respeite as referencias do autor.
/*/
User Function GETURLIMG( cUrl )
Local cHtml := ''
Local cCaminho := ''
Local cPath    := '\'
 
 
 
Default cUrl := 'https://udesenv.com.br/media/uploads/202107/advpl_vscode.png'
 
 
cHtml := HttpGet( cUrl )
 
cCaminho := cPath + SubStr( cUrl, Rat("/",cUrl) + 01 )
MemoWrite( cCaminho, cHtml )
 
 
Return( cCaminho )
