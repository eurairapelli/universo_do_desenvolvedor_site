/*/{Protheus.doc} MA651FIL
LOCALIZAÇÃO: Function A651Filtra
Função responsável por filtrar a tabela de Ordens de Produção, antes da execução do Browse.

@author		Eurai Rapelli
@since 		16/09/2014

@param		cFirmaCond		, Caracter		, Filtro gerado pela função A651Filtra().

@return		cFirmaCond		, Caracter		, Filtro gerado pela função A651Filtra().
/*/
User Function MA651FIL()
Local cFiltro	:= PARAMIXB[01]

cFiltro += " .AND. C2_LOCAL = '01' "

aAdd( aRotina, {'*Produto'	,'MATA010()'		, 0, 3 } )

Return( cFiltro )