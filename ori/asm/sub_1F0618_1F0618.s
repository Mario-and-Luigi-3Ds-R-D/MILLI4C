PUSH            {R4-R9,LR}
SUB             SP, SP, #0xC; int
MOV             R5, R3
CMP             R2, R5
LDR             R7, [SP,#0x28+arg_0]
MOV             R8, R0
MOV             R6, R1
MOV             R4, R2
MOVLT           R9, #0
BGE             loc_1F068C
ADD             R0, R4, R4,LSL#2
ADD             R0, R6, R0,LSL#2
LDR             R2, [R0,#0x10]; int
CMN             R2, #1
LDRNE           R1, [R0]
CMPNE           R1, #0
BEQ             loc_1F0680
LDR             R3, [R0,#4]
MOV             R1, R9; int
STMEA           SP, {R3,R9}
LDR             R3, [R0]; int
LDR             R0, [R8,#0x10]; int
BL              sub_532898
CMP             R0, #0
NOP
BEQ             loc_1F068C
ADD             R4, R4, #1
CMP             R5, R4
BGT             loc_1F0640
CMP             R7, #0
STRNE           R4, [R7]
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
