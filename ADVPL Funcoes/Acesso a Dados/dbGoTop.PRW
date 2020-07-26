#INCLUDE "TOTVS.CH"

User Function dbGoTop()
Local cFiltro := 'A1_COD > "000003" .AND. A1_COD < "000100" '

dbSelectArea('SA1')

SA1->( dbSetFilter( { || &cFiltro }, cFiltro ) )

SA1->( dbGoTop() )

MsgInfo( SA1->A1_COD, 'UniversoADVPL' )

Return( Nil )