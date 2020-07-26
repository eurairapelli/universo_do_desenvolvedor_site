#INCLUDE "TOTVS.CH"

User Function XGDescri()
Local cTabela	:= '002'

dbSelectArea('SXG')
SXG->( dbSeek( cTabela ) )

MsgInfo( 'Valor: ' + cTabela + CRLF + 'Retorno: ' + XGDescri(), 'UniversoADVPL' )

Return( Nil )