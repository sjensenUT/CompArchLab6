.orig x3000

; R0 = 1
lea r7 one
ldw r0 r7 #0

; R1 = 1
lea r7 one
ldw r1 r7 #0

; R2 = 1 + 1
add r2 r0 r1

;R3 = 0 + 0
add r3 r3 r3

; R0 = -1
lea r7 negone
ldw r0 r7 #0

; R1 = -1
lea r7 negone
ldw r1 r7 #0

; R4 = -1 + -1
add r4 r1 r0

; R0 = minword
lea r7 minword
ldw r0 r7 #0

; R1 = maxword
lea r7 maxword
ldw r1 r7 #0

; R5 = maxword + minword
add r5 r0 r1

; R0 = 1
lea r7 one
ldw r0 r7 #0

; R1 = maxword
lea r7 maxword
ldw r1 r7 #0

; R6 = maxword + 1
add r6 r0 r1

; R0 = R1 = 0
lea r7 zero
ldw r0 r7 #0
ldw r1 r7 #0

add r0 r2 #-2
add r0 r0 #1
add r0 r0 #-1
add r0 r0 #15
add r0 r0 #15
add r1 r1 #-16
add r1 r1 #-16

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
.end

; R0 = 0x001E
; R1 = 0xFFE0
; R2 = 0x0002
; R3 = 0x0000
; R4 = 0xFFFE
; R5 = 0xFFFF
; R6 = 0x8000
