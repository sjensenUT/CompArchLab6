.orig x3000
add r0 r0 #15
lea r1 testAddr
ldw r1 r1 #0
stw r0 r1 #0
stw r0 r1 #1

halt
zero .fill x0
one .fill x1
negone .fill x-1
maxbyte .fill x007F
minbyte .fill x00FF
maxword .fill x7FFF
minword .fill xFFFF
rand .fill xAA55
testAddr .fill x4000
.end

