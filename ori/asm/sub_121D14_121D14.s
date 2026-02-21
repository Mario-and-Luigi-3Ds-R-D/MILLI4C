MOV             R1, #0
PUSH            {R4,LR}
STRB            R1, [R0]
STRB            R1, [R0,#4]
STRB            R1, [R0,#8]
STRB            R1, [R0,#2]
STRB            R1, [R0,#6]
STRB            R1, [R0,#0xA]
STRB            R1, [R0,#1]
STRB            R1, [R0,#5]
STRB            R1, [R0,#9]
STRB            R1, [R0,#3]
STRB            R1, [R0,#7]
STRB            R1, [R0,#0xB]
BL              sub_12911C
POP             {R4,LR}
NOP
PUSH            {R4-R8,LR}
SUB             SP, SP, #0x38 ; '8'
MOV             R7, #0
MOV             R5, R0
MOV             R6, R7
MOV             R8, #1
SXTB            R1, R7
STRH            R6, [SP,#0x50+var_4E]
ADD             R12, R1, R1,LSL#2
STRH            R8, [SP,#0x50+var_50]
ADD             R0, R5, R12,LSL#2
MOV             R4, R1
STRH            R6, [R0,#2]
LDRH            R3, [SP,#0x50+var_50]
MOV             R2, SP
TST             R3, #4
BEQ             loc_121DC4
LDRH            R3, [SP,#0x50+var_4A]
STRH            R3, [R0,#6]
LDRH            R3, [SP,#0x50+var_44]
STRH            R3, [R0,#0xC]
LDRH            R3, [SP,#0x50+var_44+2]
STRH            R3, [R0,#0xE]
LDRH            R3, [SP,#0x50+var_40]
STRH            R3, [R0,#0x10]
LDRH            R3, [SP,#0x50+var_40+2]
STRH            R3, [R0,#0x12]
LDRH            R3, [SP,#0x50+var_50]
TST             R3, #2
LDRNE           R3, [SP,#0x50+var_48]
STRNE           R3, [R0,#8]
LDR             R0, =dword_70EE68
BL              sub_13339C
MOV             R1, R4
STRH            R6, [SP,#0x50+var_4E]
ADD             R3, R4, R1,LSL#2
ADD             R12, R3, R1,LSL#3
STRH            R8, [SP,#0x50+var_50]
ADD             R3, R5, R12,LSL#2
MOV             R2, SP
STRH            R6, [R3,#0x2A]
LDRH            R0, [SP,#0x50+var_50]
TST             R0, #4
BEQ             loc_121E70
LDRH            R0, [SP,#0x50+var_4A]
STRH            R0, [R3,#0x2E]
LDRH            R0, [SP,#0x50+var_34]
STRH            R0, [R3,#0x44]
LDRH            R0, [SP,#0x50+var_32]
STRH            R0, [R3,#0x46]
LDRH            R0, [SP,#0x50+var_30]
STRH            R0, [R3,#0x48]
LDRH            R0, [SP,#0x50+var_2E]
STRH            R0, [R3,#0x4A]
LDRH            R0, [SP,#0x50+var_2C]
STRH            R0, [R3,#0x4C]
LDRH            R0, [SP,#0x50+var_2A]
STRH            R0, [R3,#0x4E]
LDRH            R0, [SP,#0x50+var_28]
STRH            R0, [R3,#0x50]
LDRH            R0, [SP,#0x50+var_26]
STRH            R0, [R3,#0x52]
LDRH            R0, [SP,#0x50+var_24]
STRH            R0, [R3,#0x54]
LDRH            R0, [SP,#0x50+var_22]
STRH            R0, [R3,#0x56]
LDRH            R0, [SP,#0x50+var_20]
STRH            R0, [R3,#0x58]
LDRH            R0, [SP,#0x50+var_1E]
STRH            R0, [R3,#0x5A]
LDRH            R0, [SP,#0x50+var_50]
TST             R0, #2
BEQ             loc_121EA4
LDR             R0, [SP,#0x50+var_48]
STR             R0, [R3,#0x30]
LDR             R0, [SP,#0x50+var_44]
STR             R0, [R3,#0x34]
LDR             R0, [SP,#0x50+var_40]
STR             R0, [R3,#0x38]
LDR             R0, [SP,#0x50+var_3C]
STR             R0, [R3,#0x3C]
LDR             R0, [SP,#0x50+var_38]
STR             R0, [R3,#0x40]
LDR             R0, =dword_70EE68
BL              sub_133480
ADD             R7, R7, #1
CMP             R7, #2
BLT             loc_121D70
ADD             SP, SP, #0x38 ; '8'
POP             {R4-R8,PC}
