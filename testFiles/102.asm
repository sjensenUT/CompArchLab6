.orig x3000

lea r7 rand

; R0 = 0x00CD
ldb r0 r7 #0

; R1 = 0x00AB
ldb r1 r7 #1

; R2 = 0x0076
ldb r2 r7 #2

; R3 = 0x0098
ldb r3 r7 #3

; R4 = 0x0001
ldb r4 r7 #-1

; R5 = 0x0023
ldb r5 r7 #-2

halt

.fill x0123
rand .fill xABCD
.fill x9876
.end

; R0 = 0xFFCD
; R1 = 0xFFAB
; R2 = 0x0076
; R3 = 0xFF98
; R4 = 0x0001
; R5 = 0x0023
