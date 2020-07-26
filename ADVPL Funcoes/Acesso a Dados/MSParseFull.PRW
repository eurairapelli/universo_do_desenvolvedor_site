#INCLUDE "TOTVS.CH"

User Function MSParseFull()
Local cQuery	:= ""
Local cErro		:= ''
Local cRet		:= ''


cQuery := "create proc sp_Teste (@dtInicial char(10), @dtFinal char(18), @ben_id char(6)) " + chr(13)
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

MSParseFull( cQuery,"INFORMIX", @cErro, @cRet )

If !Empty( cErro )

	Conout( 'Erro: ' + cErro )

Else

	Conout( 'Retorno: ' + cRet )
	
Endif

Return( Nil )