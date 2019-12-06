.orig x3000
lea r0 jumplabel
add r0 r0 #1
jmp r0
add r1 r1 #-1
jumplabel add r2 r2 #-1
add r3 r3 #-1

halt
zero .fill x0
one .fill x1
negone .fill x-1
maxbyte .fill x007F
minbyte .fill x00FF
maxword .fill x7FFF
minword .fill xFFFF
rand .fill xAA55
.end

