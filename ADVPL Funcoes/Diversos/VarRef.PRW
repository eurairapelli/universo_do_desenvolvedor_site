#INCLUDE "TOTVS.CH"

User Function VarRef()
Local cOrigem	:= ''
Local cDestino	:= ''

VarRef( 'cDestino', 'cOrigem' )

cDestino := 'Novo Valor'

MsgInfo( 'VarRef: ' + cOrigem , 'UniversoADVPL' )

Return( Nil )