#INCLUDE "TOTVS.CH"

User Function RetImgType()
Local nImgType := RetImgType( '\05.-curso-mvc-1030x781.jpg' )  

If nImgType == 1   

	MsgInfo('Arquivo BMP', 'UniversoADVPL') 
	
ElseIf nImgType == 2   
	
	MsgInfo('Arquivo JPG', 'UniversoADVPL') 
	
Endif

Return( Nil )