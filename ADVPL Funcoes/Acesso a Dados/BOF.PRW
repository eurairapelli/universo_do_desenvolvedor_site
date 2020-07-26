#INCLUDE "TOTVS.CH"

User Function BOF()

dbSelectArea('SA1')
If SA1->( BOF() )
	Conout('Inicio de Arquivos')
Endif

Return( Nil )