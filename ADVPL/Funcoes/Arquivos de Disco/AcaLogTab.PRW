#INCLUDE "TOTVS.CH"

User Function AcaLogTab()
Local cArquivo	:= '\AcaLogTab.LOG'

AcaLogTab( cArquivo, 'AcaLogTab', 'Eurai'			, 'Meu erro 02' )
AcaLogTab( cArquivo, 'AcaLogTab', 'UniversoADVPL'	, 'Meu erro 04' )

Return( Nil )