#INCLUDE "TOTVS.CH"

User Function MSParseError()
Local cQuery	:= ""

cQuery := "creates proc sp_Teste char(10) (@dtInicial , @dtFinal char(18), @ben_id char(6)) " + chr(13)
cQuery += "as " + chr(13)
cQuery += "declare " + chr(13)
cQuery += "	@id		integer = 1, " + chr(13)
cQuery += "	@din	money, " + chr(13)
cQuery += "	@hoje	date " + chr(13)
cQuery += "begin " + chr(13)
cQuery += "    select distinct " + chr(13)
cQuery += "           j.nav_n2 navio, " + chr(13)
cQuery += "           isnull(g.proc_nome,'NAO DEVOLVIDO') local_dev, " + chr(13)
cQuery += "			dateadd(hour, 2, b.data_saida) " + chr(13)
cQuery += "    from   tabela1 a, " + chr(13)
cQuery += "           tabela2 b " + chr(13)
cQuery += "    where a.dt_entrada between convert(datetime,@dtInicial,103) and convert(datetime,@dtFinal,103) " + chr(13)
cQuery += "    and a.cliente = b.cliente " + chr(13)
cQuery += "end " + chr(13)
cQuery += "go "

Conout( 'Parse: ' + MSParse(cQuery,"INFORMIX") )
Conout( 'Erro: ' + MSParseError() )

Return( Nil )