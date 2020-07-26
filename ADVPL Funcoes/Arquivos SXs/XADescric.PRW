#INCLUDE "TOTVS.CH"

User Function XADescric()
Local cTabela	:= 'SA11'

dbSelectArea('SXA')
SXA->( dbSeek( cTabela ) )

MsgInfo( 'Valor: ' + cTabela + CRLF + 'Retorno: ' + XADescric(), 'UniversoADVPL' )

Return( Nil )