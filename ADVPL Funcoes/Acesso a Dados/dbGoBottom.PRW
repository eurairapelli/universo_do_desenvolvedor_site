#INCLUDE "TOTVS.CH"

User Function dbGoBottom()
Local cFiltro := 'A1_COD > "000003" .AND. A1_COD < "000100" '

dbSelectArea('SA1')

SA1->( dbSetFilter( { || &cFiltro }, cFiltro ) )

SA1->( dbGoBottom() )

MsgInfo( SA1->A1_COD, 'UniversoADVPL' )

Return( Nil )