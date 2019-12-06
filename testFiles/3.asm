.orig x3000
add r6 r6 #-1
lshf r6 r6 #1
add r5 r5 #1
add r1 r1 #3
add r2 r2 #1
add r3 r3 #-1
add r4 r4 #-1
loopStart lshf r2 r2 #1
rshfl r3 r3 #1
rshfa r4 r4 #1
add r1 r1 #-1
brp loopStart
halt
.end

