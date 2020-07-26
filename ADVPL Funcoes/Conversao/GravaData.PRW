#INCLUDE "TOTVS.CH"

User Function GravaData()

MsgInfo( 'Valor: ' + cValtoChar( Date() ) ;
	+ CRLF + 'Retorno: ' + GravaData( Date(),.F.,1 ) ; 
	+ CRLF + 'Retorno: ' + GravaData( Date(),.F.,2 ) ; 
	+ CRLF + 'Retorno: ' + GravaData( Date(),.F.,3 ) ; 
	+ CRLF + 'Retorno: ' + GravaData( Date(),.F.,4 ) ; 
	+ CRLF + 'Retorno: ' + GravaData( Date(),.F.,5 ) ; 
	+ CRLF + 'Retorno: ' + GravaData( Date(),.F.,6 ) ; 
	+ CRLF + 'Retorno: ' + GravaData( Date(),.F.,7 ) ; 
	+ CRLF + 'Retorno: ' + GravaData( Date(),.F.,8 ) , 'UniversoADVPL' )

Return( Nil )