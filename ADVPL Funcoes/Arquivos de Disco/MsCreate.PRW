#INCLUDE "TOTVS.CH"

User Function MSCreate()
Local aStruct	:= {}


aStruct := SA1->( dbStruct() )
SA1->( dbCloseArea() )

If !MSCreate( '\DATA\SA1TMP', aStruct )     

	MsgInfo("Arquivo não criado.","UniversoADVPL")

EndIf

Return( Nil )