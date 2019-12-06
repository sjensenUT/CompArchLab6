.orig x0000 ; comment
home add R0, r1, r2
add r1, R5, #0
add r4, R5, #-0
add r7, r6, #0000000
add r0, r7, x0
add r1, r4, x-0
add r2, r3, x000000
add r0, r0, x1
add r0, r0, x-0001
add r0, r0, #1
add r0, r0, #-000001
add r0, r0, #15
add r0, r0, #-16
add r0, R0, xF
add r0, r0, x-10

and r0, r1, r2
and r0, r0, #0
and r0, r0, x0
and r0, r0, #15
and r0, r0, #-16
and r0, R0, xF
and r0, r0, x-10

brn LABEL
brZ orig
BrP end
BR d123oggos
BRZP    label
Brnp    orig
bRNZ end
BRNZP home

halt ;hi
jmp r5
jsr label
jsr home
jsrr r7

ldb r5 r5 #0
ldb r5 r5, #31
ldb r5, r5 #-32
ldw r5 r5 #0
ldw r5 r5, #31
ldw r5, r5 #-32

lea r4 label
lea r3 home

nop ;heyo
not r7, r0
ret;sup

lshf r0, r1, #0
lshf r7, r6, #1
lshf r3, r5, #15
rshfl r0, r1, #0
rshfl r7, r6, #1
rshfl r3, r5, #15
rshfa r0, r1, #0
rshfa r7, r6, #1
rshfa r3, r5, #15

rti

stb r5 r5 #0
stb r5 r5, #31
stb r5, r5 #-32
stw r5 r5 #0
stw r5 r5, #31
stw r5, r5 #-32

trap x0
trap x7F
trap x1
trap xFF

xor r0, r1, r2
xor r0, r0, #0
xor r0, r0, x0
xor r0, r0, #15
xor r0, r0, #-16
xor r0, R0, xF
xor r0, r0, x-10

lAbEl   .fill x0000; address x305C
orig            .fill xFFFF
end         .fill x-8000
d123oggos      .fill #0
.fill #65535
.fill #-32768
.fill #-1
.end
