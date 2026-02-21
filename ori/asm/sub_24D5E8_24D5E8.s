PUSH            {R4,R5,LR}
SUB             SP, SP, #0x14
MOV             R4, R0
VLDR            S0, [R0,#0x1E0]
VLDR            S2, [R0,#0x1E8]
VLDR            S1, =0.0
ADD             R3, SP, #0x20+var_1C
LDR             R0, =off_6CE970
MOV             R2, #0
VSTM            R3, {S0-S2}
MOV             R3, #1
LDR             R0, [R0]
STR             R2, [SP,#0x20+var_20]
ADD             R2, SP, #0x20+var_1C
BL              sub_52AEA8
ADD             R4, R4, #0x1800
ADD             R4, R4, #0x174
MOV             R5, R0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R5, #0
STR             R5, [R4,#4]
STRNE           R4, [R5,#0x184]
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
