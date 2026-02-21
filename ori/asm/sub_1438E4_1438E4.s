PUSH            {R4,R5,LR}
SUB             SP, SP, #0x14
LDR             R0, [R0,#0x140]
CMP             R0, #0
LDRNE           R1, [R0,#0xA8]
CMPNE           R1, #0
BEQ             loc_143958
LDR             R1, [R0,#8]
VLDR            S2, =0.0
LDR             R4, =0x92492493
MOV             R12, #0
LDR             R2, [R1,#0x18]
ADD             R1, R0, #0x34 ; '4'
ADD             R3, SP, #0x20+var_1C
VLDM            R1, {S0-S1}
ADD             R1, SP, #0x20+var_18
VSTR            S2, [SP,#0x20+var_1C]
VSTM            R1, {S0-S1}
LDR             R0, [R0,#0xA8]
ADD             R1, R0, #0x110
LDM             R1, {R1,R5}
STR             R3, [SP,#0x20+var_20]
MOV             R3, #1
SUB             R1, R5, R1
SMLAL           R12, R1, R4, R1
MOV             R12, R1,ASR#5
SUB             R1, R12, R1,ASR#31
SUB             R1, R1, #1
BL              sub_218E7C
ADD             SP, SP, #0x14
MOV             R0, #0
POP             {R4,R5,PC}
