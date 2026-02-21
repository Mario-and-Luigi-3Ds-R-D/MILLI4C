PUSH            {R4-R6,LR}
MOV             R5, R0
SUB             SP, SP, #0x18
MOV             R0, #0xFFFFFFFF
MOV             R4, R1
MOV             R1, R0
STRD            R0, R1, [SP,#0x28+var_18]
STR             R0, [SP,#0x28+var_1C]
BL              sub_10E910
CMP             R0, #0
BNE             loc_107F98
ADD             R0, R5, #0xC
BL              sub_10E30C
LDR             R0, [R5]
ADD             R2, SP, #0x28+var_1C
ADD             R1, SP, #0x28+var_18
STMEA           SP, {R1,R2}
LDR             R0, [R0,#4]
ADD             R3, SP, #0x28+var_20
MOV             R2, #1
MOV             R1, R4
BL              sub_10FCCC
LDR             R0, [SP,#0x28+var_20]
CMP             R0, #0
BLE             loc_107F98
LDRSH           R0, [R4,#0xE]
ADD             R2, R4, #0xE
ADD             R1, R4, #0xC
STR             R0, [SP,#0x28+var_28]
LDRSH           R3, [R4,#0xC]
ADD             R0, R5, #0xC
BL              sub_10E358
LDRB            R0, [R5,#0x30]
MOV             R6, #0
CMP             R0, #0
BEQ             loc_107F14
LDR             R0, [R4]
STR             R0, [R5,#8]
STRB            R6, [R5,#0x30]
LDR             R0, [R4]
BIC             R0, R0, #0x2000
STR             R0, [R4]
LDR             R1, [R5,#8]
EOR             R2, R0, R1
BIC             R1, R2, R1
STR             R1, [R4,#4]
LDR             R1, [R5,#8]
BIC             R0, R1, R0
STR             R0, [R4,#8]
BL              sub_10F2FC
CMP             R0, #0
NOP
BEQ             loc_107F70
BL              sub_11B5E0
CMP             R0, #0
NOP
BNE             loc_107F70
STR             R6, [R4]
STR             R6, [R4,#8]
STR             R6, [R4,#4]
STRH            R6, [R4,#0xC]
STRH            R6, [R4,#0xE]
LDR             R0, [R4]
STR             R0, [R5,#8]
LDR             R0, =byte_6D25E8
LDRB            R0, [R0]
CMP             R0, #0
MOVEQ           R0, R4
BLEQ            sub_11B9B8
ADD             SP, SP, #0x18
MOV             R0, #1
POP             {R4-R6,PC}
ADD             SP, SP, #0x18
MOV             R0, #0
POP             {R4-R6,PC}
