#INCLUDE "TOTVS.CH"

User Function Used()
Local aRet		:= {}


dbUseArea( .T. , 'TOPCONN' , RetSqlName("SA1") , "SA1_UA" , .F. , .F. )
aAdd( aRet, Used() )

dbUseArea( .T. , 'TOPCONN' , RetSqlName("ZYZ") , "ZYZ_UA" , .F. , .F. )
aAdd( aRet, Used() )

VarInfo( 'Used', aRet )

Return( Nil )