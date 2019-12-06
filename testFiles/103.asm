.orig x3000

lea r7 all

; R0 = 0x8000
ldw r0 r7 #-1

; R1 = 0xFFFF
ldw r1 r7 #0

; R2 = 0xAA55
ldw r2 r7 #1

lea r7 addr
ldw r7 r7 #0

; 0x4000 = 0x00FF
stb r1 r7 #0

; 0x3FFE = 0xFF00
stb r1 r7 #-1

; 0x4000 = 0x55FF
stb r2 r7 #1

lea r7 addr2
ldw r7 r7 #0

stw r2 r7 #0
stw r2 r7 #-1
stw r2 r7 #1

halt

zero .fill x0
one .fill x1
negone .fill x-1
maxbyte .fill x007F
minbyte .fill x00FF
maxword .fill x7FFF
minword .fill x8000
all .fill xFFFF
rand .fill xAA55
addr .fill x4000
addr2 .fill x4006
.end

; R0 = 0x8000
; R1 = 0xFFFF
; R2 = 0xAA55
; 0x3FFE = 0xFF00
; 0x4000 = 0x55FF
; 0x4002 = 0x0000
; 0x4004 = 0xAA55
; 0x4006 = 0xAA55
; 0x4008 = 0xAA55
