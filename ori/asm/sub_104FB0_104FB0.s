PUSH            {R0-R11,LR}
SUB             SP, SP, #4
MOV             R8, R0
MOV             R7, R2
LDR             R9, =dword_6EF02C
LDR             R11, [SP,#0x38+arg_0]
LDR             R0, [R9]
CMP             R0, #0
BEQ             loc_105098
LDRH            R0, [R9,#(word_6EF038 - 0x6EF02C)]
MOV             R10, #0
CMP             R0, #0
BEQ             loc_105080
LDR             R0, [R9,#(dword_6EF034 - 0x6EF02C)]
LDR             R5, [R9,#(dword_6EF030 - 0x6EF02C)]
SUB             R4, R0, #8
CMP             R5, R4
BHI             loc_105078
LDR             R6, [R4]
CMP             R6, #0
BEQ             loc_10506C
LDR             R0, [R4,#4]
CMP             R0, #0x81000000
BEQ             loc_10501C
CMP             R0, #0x82000000
BNE             loc_10506C
B               loc_105048
LDR             R0, [R6,#4]
BICS            R1, R0, #1
BEQ             loc_10506C
TST             R0, #1
BLNE            sub_128434
LDR             R0, [R6,#4]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R10, [R6,#4]
NOP
B               loc_10506C
LDR             R0, [R6,#8]
BICS            R1, R0, #1
BEQ             loc_10506C
TST             R0, #1
BLNE            sub_128434
LDR             R0, [R6,#8]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R10, [R6,#8]
SUB             R4, R4, #8
CMP             R5, R4
BLS             loc_104FF8
LDR             R0, [R9,#(dword_6EF030 - 0x6EF02C)]
BL              sub_110D10
LDR             R0, =aRom_3; "rom:"
BL              sub_107210
LDR             R0, [R9]
NOP
BL              sub_110D10
STR             R10, [R9]
LDR             R1, [SP,#0x38+var_28]
MOV             R2, R11
MOV             R0, R7
BL              sub_10717C
MOV             R4, R0
MOV             R1, R0
LDR             R0, [R8]
LDR             R2, [SP,#0x38+var_30]
LDR             R3, [R0,#0xC]
MOV             R0, R8
BLX             R3
STR             R0, [R9]
MOV             R2, R0
LDR             R1, [SP,#0x38+var_28]
MOV             R3, R4
MOV             R0, R7
STR             R11, [SP,#0x38+var_38]
BL              sub_107370
CMP             R7, #0
NOP
BEQ             loc_10511C
LDR             R0, [R8]
MOV             R4, R7,LSL#3
LDR             R2, [SP,#0x38+var_30]
MOV             R1, R4
LDR             R3, [R0,#0xC]
MOV             R0, R8
BLX             R3
STR             R0, [R9,#(dword_6EF034 - 0x6EF02C)]
MOV             R2, R4
MOV             R1, #0
STR             R0, [R9,#(dword_6EF030 - 0x6EF02C)]
BL              sub_110BE4
STRH            R7, [R9,#(word_6EF038 - 0x6EF02C)]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
