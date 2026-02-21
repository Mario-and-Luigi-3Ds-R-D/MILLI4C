PUSH            {R3-R5,LR}
MOV             R4, R0
LDRH            R0, [R0,#0x10]
SUB             R0, R0, #1
MOV             R0, R0,LSL#16
MOVS            R0, R0,LSR#16
STRH            R0, [R4,#0x10]
BNE             locret_2008A0
BL              sub_4635D8
LDR             R3, [R4,#8]
LDR             R1, [R3,#4]
STR             R0, [SP,#0x10+var_10]
LDR             R0, =off_6D1648
ADD             R1, R1, #0x14000
LDRH            R2, [R4,#0xC]
LDR             R1, [R1,#0x180]
LDR             R0, [R0]
AND             R1, R1, #0xFF
LDR             R0, [R0,#0xA0]
BL              sub_2D4020
LDR             R0, [R4,#8]
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #1
STRB            R1, [R0,#0xDE]
LDR             R0, [R4,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x84]
MOV             R1, #0
BLX             R2
VLDR            S0, =0.0
LDR             R1, [R4,#8]
LDR             R0, =0x207E7
VMOV.F32        S1, S0
MOV             R2, #0
BL              sub_1459F8
LDR             R1, =off_67ECA8
LDRD            R0, R1, [R1]
STRD            R0, R1, [R4]
POP             {R3-R5,PC}
