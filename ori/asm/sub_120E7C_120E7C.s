PUSH            {R4-R6,LR}
SUB             SP, SP, #8
LDR             R5, =dword_6D4B2C
MOV             R4, R0
LDR             R0, [R4]
CMN             R0, #2
BEQ             loc_120EC0
CMN             R0, #1
BEQ             loc_120F10
CMP             R0, #0
MOVEQ           R12, #0
MOVEQ           R3, #0xFFFFFFFF
BEQ             loc_120EE8
CMP             R0, #1
BNE             loc_120F10
ADD             SP, SP, #8
POP             {R4-R6,PC}
MOV             R3, #0
MOV             R1, R4
LDR             R0, [R5]
MOV             R4, R3
MOV             R12, R3
MOV             R2, #1
STMEA           SP, {R4,R12}
BL              sub_1201E8
ADD             SP, SP, #8
POP             {R4-R6,PC}
LDREX           R2, [R4]
CMP             R2, R12
BNE             loc_120F04
STREX           R6, R3, [R4]
CMP             R6, #0
BNE             loc_120EE8
B               loc_120F08
CLREX
CMP             R2, #0
BEQ             loc_120EB8
MOV             R3, #0
LDR             R0, [R5]
MOV             R6, R3
MOV             R12, R3
MOV             R1, R4
MOV             R2, #1
STMEA           SP, {R6,R12}
BL              sub_1201E8
NOP
NOP
B               loc_120E8C
