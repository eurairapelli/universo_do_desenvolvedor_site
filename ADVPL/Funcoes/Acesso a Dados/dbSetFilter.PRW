#INCLUDE "TOTVS.CH"

User Function dbSetFilter()
Local cFiltro := 'A1_COD > "000001" '

dbSelectArea('SA1')

SA1->( dbSetFilter( { || &cFiltro }, cFiltro ) )

MsgInfo( dbFilter(), 'UniversoADVPL' )

Return( Nil )