PUSH            {R0-R3}
MOV             R1, #0x100
PUSH            {R4,LR}
MOV             R4, R0
LDR             R2, [SP,#0x18+varg_r1]
ADD             R3, SP, #0x18+varg_r2
BL              sub_131A90
MOVS            R1, R4
MOV             R0, #0
BEQ             loc_12B5FC
LDRH            R0, [R1]
CMP             R0, #0
BEQ             loc_12B5F4
LDRH            R0, [R4,#2]!
CMP             R0, #0
BNE             loc_12B5E8
SUB             R0, R4, R1
MOV             R0, R0,ASR#1
POP             {R4}
LDR             PC, [SP+0x14+var_14],#0x14
