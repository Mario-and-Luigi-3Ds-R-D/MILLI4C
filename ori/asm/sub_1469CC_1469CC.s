PUSH            {R4,R5,LR}
SUB             SP, SP, #0x14
MOV             R5, R0
MOV             R0, #0x810000
MOV             R4, R0
MOV             R0, R5
BL              sub_4F264C
MOV             R1, R0
MOV             R3, R4
MOV             R2, #0
MOV             R0, #0x10
BL              sub_10A358
CMP             R0, #0
BEQ             loc_146A6C
LDR             R2, =off_6B54F4
MOV             R1, #1
STRB            R1, [R0,#4]
STR             R2, [R0]
MOV             R1, #0
STR             R5, [R0,#8]
MOV             R4, R0
STRB            R1, [R0,#0xC]
MOV             R0, R5
LDR             R5, [R5,#0x18]
STR             R1, [SP,#0x20+var_20]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x28 ; '('
BL              sub_4E3CA0
VLDR            S0, =0.0
ADD             R2, SP, #0x20+var_1C
VLDR            S1, =1.0
VLDR            S2, =-0.5
MOV             R1, #1
VSTM            R2, {S0-S1}
ADD             R0, R5, #0x1DC
VSTR            S0, [SP,#0x20+var_14]
VLDR            S1, =16.0
BL              sub_5A2954
MOV             R0, R4
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
