.orig x3000
lea r7 one
ldw r0 r7 #0
lea r7 one
ldw r1 r7 #0
add r2 r0 r1
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
