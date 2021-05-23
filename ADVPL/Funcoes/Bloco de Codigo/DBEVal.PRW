#INCLUDE "TOTVS.CH"

User Function dbEVal()

dbSelectArea('CC2')

CC2->( dbEVal( { || Conout(CC2->CC2_MUN) } ) )

Return( Nil )