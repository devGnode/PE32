# PE32

### :one: Little Exercice

Try to catch GetProcAddress from import table IAT. this method works for all soft who import some functions from kernel32.dll.
Only with putty.exe on XP sp3.

  * Access to TEB : 0x30
  * ImageBaseAddress : 0x08
  * Pattern MZ
  * Load e_lfnew : 0x3c
  * PE
  * PE + 0x80 : imporation
  * ImageBaseAddress + RVAImportationTables
  * Loop Function
  * EDI == GetProcAddress
  
<img src="https://zupimages.net/up/19/01/c75v.png">
