PUSH            {R4,R5,LR}
MOV             R5, R0
LDR             R0, [R1]
MOV             R4, R1
SUB             SP, SP, #0xC
LDR             R1, [R0,#0x18]
MOV             R0, R4
BLX             R1
MOV             R1, R0
MOV             R2, #1
MOV             R0, SP
BL              sub_14C614
LDR             R0, =off_6CDA80
VLDR            S0, [SP,#0x18+var_10]
LDR             R0, [R0]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
ADD             R0, R0, #0x400
VLDR            S1, [R0,#0x40]
MOV             R0, R4
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x18+var_10]
BL              sub_5C55B0
ADD             R5, R5, #0x12400
ADD             R5, R5, #0x2F8
ADD             R4, R4, #0x400
LDR             R3, [R5]
MOV             R2, R0
VLDR            S0, [R4,#0x14]
MOV             R1, SP
MOV             R0, R3
BL              sub_229AF8
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
