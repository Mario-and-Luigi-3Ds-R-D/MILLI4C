PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
SUB             SP, SP, #8
LDR             R5, =dword_6D4B2C
CMN             R0, #1
MOVEQ           R0, #0
BEQ             loc_118A14
LDR             R0, [R4]
CMN             R0, #2
BNE             loc_118A44
ADD             R6, R4, #4
MOV             R0, R6
BL              sub_128238
MOV             R0, #1
LDREX           R1, [R4]
STREX           R3, R0, [R4]
CMP             R3, #0
BNE             loc_1189D4
MOV             R2, #0
MOV             R1, R4
LDR             R0, [R5]
MOV             R4, R2
MOV             R12, R2
MOV             R3, #0xFFFFFFFF
STMEA           SP, {R4,R12}
BL              sub_1201E8
ADD             SP, SP, #8
MOV             R0, R6
POP             {R4-R6,LR}
B               sub_120FBC
LDREX           R1, [R4]
STREX           R3, R0, [R4]
CMP             R3, #0
BNE             loc_118A14
MOV             R2, #0
MOV             R1, R4
LDR             R0, [R5]
MOV             R4, R2
MOV             R12, R2
MOV             R3, #1
STMEA           SP, {R4,R12}
BL              sub_1201E8
ADD             SP, SP, #8
POP             {R4-R6,PC}
