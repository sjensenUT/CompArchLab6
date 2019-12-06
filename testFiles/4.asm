.orig x3000
lea r6 one
ldb r0 r6 #0
ldb r1 r6 #1
ldb r2 r6 #2
ldb r3 r6 #3
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

