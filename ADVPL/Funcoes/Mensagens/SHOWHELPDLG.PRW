#INCLUDE "TOTVS.CH"

User Function ShowHelpCpo()
Local aAjuda	:= {}
Local aValid	:= {}

aAdd( aAjuda, 'Ajuda 01' )
aAdd( aAjuda, 'Ajuda 02' )
aAdd( aAjuda, 'Ajuda 03' )
aAdd( aAjuda, 'Ajuda 04' )
aAdd( aAjuda, 'Ajuda 05' )

aAdd( aValid, 'Validação 01' )
aAdd( aValid, 'Validação 02' )
aAdd( aValid, 'Validação 03' )
aAdd( aValid, 'Validação 04' )
aAdd( aValid, 'Validação 05' )

ShowHelpCpo( 'UniversoADVPL', aAjuda, , aValid, )

//OU

ShowHelpCpo( 'UniversoADVPL', { 'Ajuda 01', 'Ajuda 02', 'Ajuda 03' }, , {'Validação 01'}, )

Return( Nil )