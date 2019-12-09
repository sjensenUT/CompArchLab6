.orig x3000
lea r0 test1
lea r2 test2
lea r1 word
ldb r1 r1 #0
stb r1 r0 #1
stb r1 r2 #1
halt
test1 .fill x0000
test2 .fill xFFFF
word .fill xABCD
.end
