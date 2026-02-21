PUSH            {R3-R11,LR}
CMP             R1, #0
MOVEQ           R1, #1
MOV             R5, #1
ADD             R1, R1, #3
LDRH            R12, [R0,#0x36]
CMP             R2, #0
MOV             R10, #0
BIC             R3, R1, #3
BIC             R7, R5, R12
BLT             loc_132C6C
LDR             R12, [R0,#0x24]!
MOV             R1, #0
MOV             R6, #0xFFFFFFFF
CMP             R12, #0
MOV             R8, R1
SUBNE           R9, R2, #1
BEQ             loc_132CF4
ADD             R5, R12, #0x10
ADD             LR, R5, R2
SUB             R4, LR, #1
LDR             LR, [R12,#4]
BIC             R4, R4, R9
SUB             R5, R4, R5
ADD             R5, R5, R3
CMP             LR, R5
CMPCS           R6, LR
BLS             loc_132C40
CMP             R7, #0
MOV             R1, R12
MOV             R6, LR
MOV             R8, R4
BNE             loc_132C4C
CMP             R6, R3
BEQ             loc_132C4C
LDR             R12, [R12,#0xC]
CMP             R12, #0
BNE             loc_132BFC
CMP             R1, #0
BEQ             loc_132CF4
MOV             R2, R8
STR             R10, [SP,#0x28+var_28]
BL              sub_13DF88
MOV             R10, R0
NOP
B               loc_132CF4
ADD             R6, R0, #0x24 ; '$'
LDR             R0, [R0,#0x28]
RSB             R12, R2, #0
MOV             R1, #0
CMP             R0, #0
MOV             LR, #0xFFFFFFFF
MOV             R2, R1
SUBNE           R9, R12, #1
BEQ             loc_132CF4
LDR             R8, [R0,#4]
ADD             R4, R0, #0x10
ADD             R12, R8, R4
SUB             R12, R12, R3
BIC             R12, R12, R9
SUBS            R4, R12, R4
BMI             loc_132CD0
CMP             R8, LR
BCS             loc_132CD0
CMP             R7, #0
MOV             R1, R0
MOV             LR, R8
MOV             R2, R12
BNE             loc_132CDC
CMP             LR, R3
BEQ             loc_132CDC
LDR             R0, [R0,#8]
CMP             R0, #0
BNE             loc_132C90
CMP             R1, #0
BEQ             loc_132CF4
MOV             R0, R6
STR             R5, [SP,#0x28+var_28]
BL              sub_13DF88
MOV             R10, R0
MOV             R0, R10
POP             {R3-R11,PC}
