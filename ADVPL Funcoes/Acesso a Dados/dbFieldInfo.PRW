#INCLUDE "TOTVS.CH"
#INCLUDE "DBSTRUCT.CH" 

User Function dbFieldInfo()
Local nPosCampo	:= 0

dbSelectArea('SA1')

nPosCampo := SA1->( FieldPos( 'A1_COD' ) )

Conout('A1_COD')
Conout( dbFieldInfo(DBS_NAME,nPosCampo) )
Conout( dbFieldInfo(DBS_TYPE,nPosCampo) )
Conout( dbFieldInfo(DBS_LEN,nPosCampo) )
Conout( dbFieldInfo(DBS_DEC,nPosCampo) )


Return( Nil )