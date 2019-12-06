.orig x3000
lea r7, data
ldw r0, r7, #0

lshf r1, r0, #1     ; lshf
rshfl r2, r0, #1    ; rshfl with leading 0
rshfl r3, r1, #1    ; rshfl with leading 1
rshfa r4, r0, #1    ; rshfa with leading 0
rshfa r5, r1, #1    ; rshfa with leading 1
lshf r6, r0, #15
rshfa r0, r6 #15
rshfl r0, r0 #8

halt
data .fill x5555
.end

; R0 = 0x00FF
; R1 = 0xAAAA
; R2 = 0x2AAA
; R3 = 0x5555
; R4 = 0x2AAA
; R5 = 0xD555
; R6 = 0x8000
