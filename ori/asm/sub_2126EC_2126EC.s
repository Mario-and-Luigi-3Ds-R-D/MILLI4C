PUSH            {R4,LR}
LDR             R1, [R2,#8]
MOV             R1, R1,LSL#20
MOV             R1, R1,LSR#20
ADD             R0, R0, R1,LSL#3
LDR             R0, [R0,#0x2B4]
CMP             R0, #0
BLNE            sub_533330
MOV             R0, #0
POP             {R4,PC}
