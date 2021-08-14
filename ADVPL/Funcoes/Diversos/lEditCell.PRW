#INCLUDE "TOTVS.CH"

User Function lEditCell()

// lEditCell(aBrowse,oBrowse,cPict,nCol,cF3,lReadOnly,bValid,aItems)
lEditCell(aBrowse,oBrowse,"@!",2,'SA1',.F.,{ |UD| .T. } )
lEditCell(aBrowse,oBrowse,"@!",2,'SA1',.F.,{ |UD| .T. }, {"S=SIM","N=NAO"} ) //COMBOX

Return( Nil )
