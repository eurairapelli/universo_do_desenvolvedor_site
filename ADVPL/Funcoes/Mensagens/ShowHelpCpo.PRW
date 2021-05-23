#INCLUDE "TOTVS.CH"

User Function ShowHelpDlg()
Local aProblema	:= {}
Local aSolucao	:= {}

aAdd( aProblema, 'Problema 01' )
aAdd( aProblema, 'Problema 02' )
aAdd( aProblema, 'Problema 03' )
aAdd( aProblema, 'Problema 04' )
aAdd( aProblema, 'Problema 05' )

aAdd( aSolucao, 'Solução 01' )
aAdd( aSolucao, 'Solução 02' )
aAdd( aSolucao, 'Solução 03' )
aAdd( aSolucao, 'Solução 04' )
aAdd( aSolucao, 'Solução 05' )

ShowHelpDlg( 'UniversoADVPL', aProblema, , aSolucao, )

//OU

ShowHelpDlg( 'UniversoADVPL', { 'Problema 01', 'Problema 02', 'Problema 03' }, , {'Solução 01'}, )

Return( Nil )