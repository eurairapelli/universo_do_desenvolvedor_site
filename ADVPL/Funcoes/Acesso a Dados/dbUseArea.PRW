#INCLUDE "TOTVS.CH"

User Function dbUseArea()

dbUseArea( .T. , 'TOPCONN' , RetSqlName("SA1") , "SA1_UA" , .T. , .F. )

If Select("SA1_UA") > 0
	
	MsgInfo( SA1_UA->A1_COD	 + ' - ' + SA1_UA->A1_LOJA, 'UniversoADVPL' )

Else

	MsgInfo( 'Erro Selecionar Area', 'UniversoADVPL' )
	
Endif

Return( Nil )