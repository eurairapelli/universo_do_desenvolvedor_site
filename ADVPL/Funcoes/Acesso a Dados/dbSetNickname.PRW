#INCLUDE "TOTVS.CH"

User Function dbSetNickname()

dbSelectArea("SA1")

SA1->( dbSetNickName("A1_FILIAL+A1_COD+A1_LOJA","SC_SA11") )

SA1->( dbOrderNickName("SC_SA11") )

Return( Nil )