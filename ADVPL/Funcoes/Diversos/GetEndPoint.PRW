#INCLUDE "TOTVS.CH"

User Function GetEndPoint()
Local lBroker   := .T.


MsgInfo( "GetEndPoint(): " + GetEndPoint(@lBroker) + ' ' + cValtoChar(lBroker), 'Universo do Desenvolvedor' )

Return( Nil )
