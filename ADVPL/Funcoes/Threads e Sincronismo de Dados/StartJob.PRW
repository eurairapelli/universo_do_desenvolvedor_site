#INCLUDE "TOTVS.CH"

User Function StartJ()

StartJob("U_JOB", GetEnvServer(), .F., 'UniversoADVPL', 'ADVPL' )

Return( Nil )

User Function JOB( cMen1, cMen2 )

Conout( cMen1 + ' - ' + cMen2, 'UniversoADVPL' )

Return( Nil )