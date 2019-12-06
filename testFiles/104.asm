.orig x3000

lea r0 next     ; 0x3000
jsrr r0         ; 0x3002
halt            ; 0x3004
next jsr label  ; 0x3006
halt            ; 0x3008
label nop       ; 0x300A
jsr final       ; 0x300C
final nop       ; 0x300E
halt            ; 0x3010

.end

; R7 = 0x3012
