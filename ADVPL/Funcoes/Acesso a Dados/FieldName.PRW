#INCLUDE "TOTVS.CH"

User Function FieldName()

dbSelectArea('SA1')

MsgInfo( FieldName( 4 ) + CRLF + Field( 4 ), 'UniversoADVPL' )

Return( Nil )