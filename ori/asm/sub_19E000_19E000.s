PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
ADD             R1, R4, R4,LSL#1
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x64 ; 'd'
POP             {R4,PC}
