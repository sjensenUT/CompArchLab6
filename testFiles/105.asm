.orig x3000

; R0 = 0xFFFF
lea r7 all
ldw r0 r7 #0

; 0xFFFF & 0x0000
and r6 r0 r6

; 0xFFFF ^ 0x0000
xor r5 r0 r5

; R0 = 0xF0F0
lea r7 alt
ldw r0 r7 #0

; R1 = 0xA5A5
lea r7 alt2
ldw r1 r7 #0

; 0xF0F0 & 0xA5A5
and r4 r0 r1

; 0xF0F0 ^ 0xA5A5
xor r3 r0 r1

; R0 = R1 = 0xFE12
lea r7 alt3
ldw r0 r7 #0
ldw r1 r7 #0

; 0xFE12 & 0xFFF0
and r0 r0 #-16

; 0xFE12 ^ 0x000F
xor r1 r1 #15

halt
zero .fill x0
all .fill xFFFF
alt .fill xF0F0
alt2 .fill xA5A5
alt3 .fill xFE12
.end

; R0 = 0xFE10
; R1 = 0xFE1D
; R2 = 0x0000
; R3 = 0x5555
; R4 = 0xA0A0
; R5 = 0xFFFF
; R6 = 0x0000
