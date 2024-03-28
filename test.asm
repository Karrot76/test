INCLUDE Irvine32.inc
INCLUDE macros.inc

 .data
  msg BYTE    "the quick red fox jumps over the lazy brown dog", "#"
  ;   note I put a '#' were the null (0) should be
  bye BYTE   "good bye",0

 .code

 main PROC
    mov ecx, LENGTHOF msg
    ;dec ecx                 ;lengthof includes the NULL
    mov edi, 0              ; endex
    TOP:
        movzx eax, [msg+edi]
        call WriteChar
        inc edi
    loop TOP
    call CRLF
    mov edx, OFFSET msg
    call WriteString
    call CRLF
    exit
 main ENDP
END main
