PUSH            {R4-R6,LR}
CMP             R1, #0
SUB             SP, SP, #8
MOV             R4, R0
MOV             R6, R2
MOV             R5, R3
BNE             loc_2A8870
ADD             R0, R4, #4
MOV             R1, SP
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R1, [SP,#0x18+var_18]
CMP             R5, #0
BEQ             loc_2A8880
CMP             R5, R1
BLS             loc_2A8884
MOV             R5, R1
LDR             R2, [R4,#0x64]
MOV             R0, #0
CMP             R2, #0
STRNE           R0, [R4,#0x54]
LDR             R2, [R4,#0x88]
CMP             R2, #0
STRNE           R0, [R4,#0x58]
STR             R1, [R4,#0x74]
STR             R6, [R4,#0x90]
STR             R5, [R4,#0x7C]
STR             R4, [R4,#0x6C]
ADD             R1, R4, #0x38 ; '8'
STRH            R0, [R4,#0x80]
STR             R1, [R4,#0x84]
LDR             R0, [R4,#0x18]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R2, [R1]
ADD             SP, SP, #8
ADD             R1, R4, #0x5C ; '\'
POP             {R4-R6,LR}
BX              R2
