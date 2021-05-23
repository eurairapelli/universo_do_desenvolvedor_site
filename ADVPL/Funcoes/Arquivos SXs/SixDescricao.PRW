#INCLUDE "TOTVS.CH"

User Function SixDescricao()
Local cTabela	:= 'SA11'

dbSelectArea('SIX')
SIX->( dbSeek( cTabela ) )

MsgInfo( 'Valor: ' + cTabela + CRLF + 'Retorno: ' + SixDescricao(), 'UniversoADVPL' )

Return( Nil )