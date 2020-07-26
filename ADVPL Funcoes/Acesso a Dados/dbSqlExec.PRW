#INCLUDE "TOTVS.CH"

User Function dbSqlExec()

dbCreate( 'UASA1', SA1->( dbStruct() ), 'SQLITE_SYS' )


dbUseArea( .T., 'SQLITE_SYS', 'UASA1', 'SA1TMP', .F., .F. )

If dbTblCopy('SA1', 'SA1TMP')
   MsgInfo("Tabela copiada com sucesso.", 'UniversoADVPL')
Else
   MsgInfo("Tabela não foi copiada.", 'UniversoADVPL')
Endif

If dbSqlExec('TRB', 'SELECT A1_NOME FROM UASA1', 'SQLITE_SYS')
   
   Do While TRB->( !EOF() ) 
      
      Conout( TRB->A1_NOME )
      
      TRB->( dbSkip() )
   EndDo
   
Else
	MsgInfo("Query não foi realizada.", 'UniversoADVPL')
Endif

Return( Nil )