PUSH            {R4-R6,LR}
ADD             R5, R0, #0xA400
ADD             R5, R5, #0x1FC
MOV             R4, R0
LDRB            R0, [R5,#0x38]
SUB             SP, SP, #8
CMP             R0, #2
CMPNE           R0, #0
MOVEQ           R1, #1
MOVNE           R1, #0
MOV             R0, R5
BL              sub_223340
LDR             R6, [R5]
ADD             R4, R4, #4
ADD             R0, R4, #0x9000
STR             R6, [SP,#0x18+var_18]
MOV             R1, SP
ADD             R0, R0, #0xB30
STR             R6, [R4,#0x9C]
BL              sub_14D778
ADD             R5, R4, #0x9C00
ADD             R5, R5, #0x324
ADD             R4, R4, #0xA000
ADD             R4, R4, #0x3DC
ADD             R0, R5, #8
STR             R6, [SP,#0x18+var_18]
CMP             R0, R4
STR             R6, [R5,#0x6C0]
BEQ             loc_22A1F4
LDR             R1, [R5,#0x6C0]
STR             R1, [R0,#0xC8]
ADD             R0, R0, #0x190
CMP             R0, R4
BNE             loc_22A1E0
ADD             R6, R5, #0x6C0
LDR             R0, [R5,#0x6C0]
ADD             R2, SP, #0x18+var_14
MOV             R1, #0
STR             R0, [SP,#0x18+var_14]
MOV             R0, R4
BL              sub_12C9C4
ADD             R4, R4, #0x104
CMP             R4, R6
BNE             loc_22A1F8
ADD             SP, SP, #8
POP             {R4-R6,PC}
