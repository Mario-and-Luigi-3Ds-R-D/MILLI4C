PUSH            {R4,R5,LR}
SUB             SP, SP, #0x1C
MOV             R4, R0
MOV             R0, #0xFFFFFFFF
MOV             R5, R1
MOV             R1, R0
STRD            R0, R1, [SP,#0x28+var_18]
STR             R0, [SP,#0x28+var_1C]
LDR             R0, [R4]
ADD             R2, SP, #0x28+var_1C
ADD             R3, SP, #0x28+var_18
STR             R2, [SP,#0x28+var_24]
STR             R3, [SP,#0x28+var_28]
LDR             R0, [R0,#4]
ADD             R3, SP, #0x28+var_20
MOV             R2, #1
MOV             R1, R5
BL              sub_11BA8C
LDR             R0, [SP,#0x28+var_20]
CMP             R0, #0
MOVLE           R0, #0
BLE             loc_107D4C
LDRSH           R3, [R4,#6]
LDRSH           R2, [R4,#4]
LDRSH           R1, [R4,#8]
LDRSH           R0, [R5]
BL              sub_119768
STRH            R0, [R5]
STRH            R0, [R4,#8]
LDRSH           R3, [R4,#6]
LDRSH           R2, [R4,#4]
LDRSH           R1, [R4,#0xA]
LDRSH           R0, [R5,#2]
BL              sub_119768
STRH            R0, [R5,#2]
STRH            R0, [R4,#0xA]
LDRSH           R3, [R4,#6]
LDRSH           R2, [R4,#4]
LDRSH           R1, [R4,#0xC]
LDRSH           R0, [R5,#4]
BL              sub_119768
STRH            R0, [R5,#4]
STRH            R0, [R4,#0xC]
MOV             R1, R5
MOV             R0, R4
BL              sub_10E6BC
MOV             R0, #1
ADD             SP, SP, #0x1C
POP             {R4,R5,PC}
