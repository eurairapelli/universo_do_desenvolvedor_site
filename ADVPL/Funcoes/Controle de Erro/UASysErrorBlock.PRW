#INCLUDE "TOTVS.CH"

User Function UASysErrorBlock()
Local bError 	:= SysErrorBlock( { |e| MsgAlert( ErrorDialog( e ), 'UniversoADVPL' ) } )

MsgInfo('UniversoADVPL','UniversoADVPL')

SysErrorBlock(bError)

Return( Nil )