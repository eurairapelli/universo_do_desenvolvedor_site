#INCLUDE "TOTVS.CH"

User Function MsCopyTo()

DBUseArea(.T., "DBFCDX", '\DATA\SA1990', "TMP", .T., .F.)

MSCopyTo( '\DATA\SA1990' + GetDBExtension(), '\DATA\' + 'SA1BKP' + GetDBExtension() )

Return( Nil )