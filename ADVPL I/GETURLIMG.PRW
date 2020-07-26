#INCLUDE "TOTVS.CH"

/*/{Protheus.doc} GETURLIMG
Salva imagem por URL
 
@author Eurai Rapelli
@since 06/05/2015
 
@Param cUrl , Caracter , Endereço HTTP
@Return cCaminho , Caracter , Local onde foi armazenado arquivo
 
@Example U_GetUrlImg( 'http://www.universoadvpl.com/wp-content/uploads/2015/04/01.-Curso-MVC-513x630.jpg' )
 
@See http://www.universoadvpl.com/
 
@OBS Conteudo pode ser utilizado desde que respeite as referencias do autor.
/*/
User Function GETURLIMG( cUrl )
Local cHtml := ''
Local cCaminho := ''
Local cPath    := '\'
 
 
 
Default cUrl := 'http://www.universoadvpl.com/wp-content/uploads/2015/04/05.-Curso-MVC-1030x781.jpg'
 
 
cHtml := HttpGet( cUrl )
 
cCaminho := cPath + SubStr( cUrl, Rat("/",cUrl) + 01 )
MemoWrite( cCaminho, cHtml )
 
 
Return( cCaminho )