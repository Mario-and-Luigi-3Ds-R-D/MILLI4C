PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0x2C
LDR             R0, [R0,#0xC]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
BNE             loc_27F194
LDR             R0, =off_6CDF98
ADD             R1, SP, #0x40+var_24
LDR             R0, [R0]
LDR             R5, [R0,#0x124]
BL              sub_5CC8EC
LDR             R1, [R5,#0x1C0]
LDR             R0, [SP,#0x40+var_24]
LDR             R2, [SP,#0x40+var_1C]
ADD             R3, SP, #0x40+var_30
STM             R3, {R0-R2}
LDR             R0, [R4,#0xC]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x40+var_30
BLX             R2
LDR             R0, [R5,#0x1C4]
LDR             R12, =off_6CE970
LDR             R2, =0x300DA
STR             R0, [R4,#0x414]
LDR             R0, =0xFFE683CC
LDR             R12, [R12]
LDR             R1, [R4,#0xC]
ADD             R7, R4, #0x400
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, #1
STRB            R0, [R4,#0x112]
MOV             R0, #0xFFFFFF00
ADD             R5, R4, #0x34C
REV             R0, R0
ADD             R6, R4, #0x20 ; ' '
STR             R0, [SP,#0x40+var_38]
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, [SP,#0x40+var_38]
ADD             R1, SP, #0x40+var_38
VLDR            S0, =4.0
STR             R0, [R5,#4]
STR             R0, [R5]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x40+var_38]
ADD             R0, R6, #0x32C
BL              sub_4E665C
MOV             R0, #4
VLDR            S0, =0.0
STRB            R0, [R4,#4]
VSTR            S0, [R7,#0x1C]
VSTR            S0, [R7,#0x18]
ADD             SP, SP, #0x2C ; ','
POP             {R4-R7,PC}
