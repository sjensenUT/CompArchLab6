.orig x3000

; cc = z
lea r7, z
ldw r0 r7 #0

brp bad
brn bad
brnp bad

; cc = n
lea r7, n
ldw r0 r7 #0

brp bad
brz bad
brzp bad

; cc = p
lea r7, p
ldw r0 r7 #0

brn bad
brz bad
brnz bad

br BRANCH0

bad add r1 r1 #1 ; Code should never get here
halt

BRANCH0 lea r7, z
ldw r0 r7 #0

brz BRANCH1
add r1 r1 #1 ; Code should never get here
halt

BRANCH1 brnz BRANCH2
add r1 r1 #1 ; Code should never get here
halt

BRANCH2 brzp BRANCH3
add r1 r1 #1 ; Code should never get here
halt

BRANCH3 lea r7, p
ldw r0 r7 #0

brp BRANCH4
add r1 r1 #1 ; Code should never get here
halt

BRANCH4 brzp BRANCH5
add r1 r1 #1 ; Code should never get here
halt

BRANCH5 brnp BRANCH6
add r1 r1 #1 ; Code should never get here
halt

BRANCH6 lea r7, n
ldw r0 r7 #0

brn BRANCH7
add r1 r1 #1 ; Code should never get here
halt

BRANCH7 brnz BRANCH8
add r1 r1 #1 ; Code should never get here
halt

BRANCH8 brnp BRANCH9
add r1 r1 #1 ; Code should never get here
halt

BRANCH9 brnzp good
add r1 r1 #1 ; Code should never get here
halt

good add r2 r2 #1
halt

z .fill #0
n .fill #-1
p .fill #1

.end

; R1 = 0x0000
; R2 = 0x0001
