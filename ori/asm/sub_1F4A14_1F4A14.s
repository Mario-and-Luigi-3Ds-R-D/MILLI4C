MOV             R3, R0
PUSH            {R4,LR}
LDRB            R0, [R1,#0x27]
MOV             R12, R0,LSR#4
BIC             R0, R0, #0xF0
MOV             R12, R12,LSL#4
SUB             R12, R12, #0x10
AND             R12, R12, #0xF0
ORR             R12, R12, R0
STRB            R12, [R1,#0x27]
MOV             R0, R12,LSR#4
ADD             R12, R1, R0,LSL#2
LDRH            R0, [R2,#2]
VLDR            S0, [R12,#0x30]
MOV             R2, R1
MOV             R1, R3
VCVT.F32.S32    S0, S0
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
