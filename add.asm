.orig x3000
lea r1 mem1 
ldw r1 r1 #0 ; load x4000 into r1
add r2 r2 #1 ; load 1 into r2
stw r2 r1 #0 ; store 1 into x4000
lea r0 mem2
ldw r0 r0 #0  ; set r0 to 0xC000
and r1 r1 #0
add r1 r1 #10 ; set r1 to 19
add r1 r1 #9
loopstart ldb r2 r0 #0 ; load in r0 into r2
add r3 r3 r2 ; add r2 to r3
add r0 r0 #1 
add r1 r1 #-1
brzp loopstart ; stop after 20 iterations 
lea r0 mem3 ; load xC014 into r0
ldw r0 r0 #0
stw r3 r0 #0 ; store r3 into xC014
halt
mem1 .fill x4000
mem2 .fill xC000
mem3 .fill xC014
mem4 .fill x0000
.end
