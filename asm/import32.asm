;
;
;	READ IMPORATION TABLE
;
;	@By Maroder for devGnode
;
[BITS 32]

	global _start

section .data
section .bss
section .text
_start:
	xor edx, edx		; 
	mov eax, [fs:edx+0x30]	; TEB
	mov edi, [eax+0x08]	; ImageBase pattern "MZ"
	mov eax, [edi+0x3c]	; e_lfnew 0x40

	add eax, edi		; PE
	mov ebx, [eax+0x80]	; IMPORTATION TABLE
	add ebx, edi		; IMPORT BASE

	mov esi, dword[ebx]	; RVA 
	add esi, edi		; Offset + BASE

	xor ecx, ecx		; calc iteration
	bcl:	
	inc ecx			; 
	lodsd
	inc eax			; IMAGE_IMPORT_BY_NAME [ WORD + FUNCTION NAME ]
	inc eax	
	add eax, edi		; RVA + Base	
	nop			; eax == function name imporation
	nop
	nop
	jmp bcl	

