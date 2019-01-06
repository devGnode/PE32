# PE32

### :one: Little Exercices

Listing of all functions imported by a program in asm from TEB imageBase.

  * Access to TEB : 0x30
  * ImageBaseAddress : 0x08
  * Pattern MZ
  * Load e_lfnew : 0x3c
  * PE
  * PE + 0x80 : imporation
  * ImageBaseAddress + RVAImportationTables
  * Loop Function
  
<img src="https://zupimages.net/up/19/01/r86v.png">
