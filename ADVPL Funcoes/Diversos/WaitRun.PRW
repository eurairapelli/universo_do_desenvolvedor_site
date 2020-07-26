#INCLUDE "TOTVS.CH"

#DEFINE SW_HIDE             0 // Escondido
#DEFINE SW_SHOWNORMAL       1 // Normal
#DEFINE SW_NORMAL           1 // Normal
#DEFINE SW_SHOWMINIMIZED    2 // Minimizada
#DEFINE SW_SHOWMAXIMIZED    3 // Maximizada
#DEFINE SW_MAXIMIZE         3 // Maximizada
#DEFINE SW_SHOWNOACTIVATE   4 // Na Ativação
#DEFINE SW_SHOW             5 // Mostra na posição mais recente da janela
#DEFINE SW_MINIMIZE         6 // Minimizada
#DEFINE SW_SHOWMINNOACTIVE  7 // Minimizada
#DEFINE SW_SHOWNA           8 // Esconde a barra de tarefas
#DEFINE SW_RESTORE          9 // Restaura a posição anterior
#DEFINE SW_SHOWDEFAULT      10// Posição padrão da aplicação
#DEFINE SW_FORCEMINIMIZE    11// Força minimização independente da aplicação executada
#DEFINE SW_MAX              11// Maximizada

User Function WaitRun()

WaitRun( "CALC.EXE", SW_SHOWNORMAL )

Return( Nil )