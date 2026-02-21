PUSH            {R4,LR}
SUB             SP, SP, #8
MOV             R12, R1
MOV             R4, R2
LDRB            R1, [R0,#0xC]
MOV             R2, R3
LDR             R3, [SP,#0x10+arg_0]
CMP             R1, #0
BEQ             loc_10E3AC
CMP             R1, #1
BEQ             loc_10E3CC
CMP             R1, #2
BNE             loc_10E3A4
LDRSH           R1, [R0,#0xA]
LDRSH           R0, [R0,#4]
STRD            R0, R1, [SP,#0x10+var_10]
MOV             R1, R4
MOV             R0, R12
BL              sub_11B7EC
ADD             SP, SP, #8
POP             {R4,PC}
LDRSH           R1, [R0,#6]
LDRSH           R0, [R0]
STRD            R0, R1, [SP,#0x10+var_10]
MOV             R1, R4
MOV             R0, R12
BL              sub_11B708
ADD             SP, SP, #8
POP             {R4,PC}
LDRSH           R1, [R0,#8]
LDRSH           R0, [R0,#2]
STRD            R0, R1, [SP,#0x10+var_10]
MOV             R1, R4
MOV             R0, R12
BL              sub_11B604
ADD             SP, SP, #8
POP             {R4,PC}
