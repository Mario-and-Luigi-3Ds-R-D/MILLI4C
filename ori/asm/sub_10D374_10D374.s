PUSH            {R4-R7,LR}
SUB             SP, SP, #0xC
CMP             R2, #0
LDR             R5, [SP,#0x20+arg_0]
MOV             R7, R0
MOV             R4, R1
MOV             R6, R3
BEQ             loc_10D3EC
CMP             R5, #0
BEQ             loc_10D3A4
CMP             R5, R2
BLS             loc_10D3A8
MOV             R5, R2
LDR             R1, [R4,#8]
MOV             R0, #0
CMP             R1, #0
STRNE           R0, [R4,#0x14]
ADD             R1, R4, #0x18
STR             R5, [R4,#0x20]
STR             R7, [R4,#0x10]
STM             R1, {R2,R6}
STRH            R0, [R4,#0x24]
LDR             R0, [R7,#0x18]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R2, [R1]
ADD             SP, SP, #0xC
MOV             R1, R4
POP             {R4-R7,LR}
BX              R2
ADD             R0, R7, #4
MOV             R1, SP
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [SP,#0x20+var_20]
CMP             R0, R6
SUBHI           R2, R0, R6
BLS             loc_10D418
B               loc_10D394
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
