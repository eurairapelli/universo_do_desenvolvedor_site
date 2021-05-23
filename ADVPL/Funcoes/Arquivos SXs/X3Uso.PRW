#INCLUDE "TOTVS.CH"

User Function X3Uso()

SX3->( dbSetOrder( 2 ) )
SX3->( dbSeek( 'A1_PESSOA ' ) )
MsgInfo( 'X3Uso A1_PESSOA: ' + cValtoChar( X3USO(SX3->X3_USADO) ) )

Return( Nil )