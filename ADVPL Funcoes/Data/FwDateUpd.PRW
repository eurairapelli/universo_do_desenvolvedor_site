#INCLUDE "TOTVS.CH"

User Function FwDateUpd()
Local lContinue := .T.

Do While lContinue

	FwDateUpd(.F.)
	lContinue := MsgYesNo( "Continuar no Loop?","Aviso em " + Dtoc(If(Type("dDatabase") == "D", dDatabase, Date() ) ) )

EndDo

Return( Nil )