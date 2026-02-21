PUSH            {R4-R8,LR}
MOV             R5, R2
MOV             R8, R0
MOV             R6, R1
VPUSH           {D8}
LDR             R0, [R2,#8]
LDR             R2, =off_6CE970
AND             R1, R0, #0xFF
LDR             R0, =0xFFE683CC
LDR             R2, [R2]
SUB             R0, R2, R0
BL              sub_503508
MOVS            R4, R0
BEQ             loc_204FB4
LDR             R0, [R5,#0xC]
VLDR            S16, =0.0
TST             R0, #0xFF
VMOV.F32        S0, S16
BNE             loc_204F98
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             loc_204F94
LDR             R0, [R4,#0x18]
CMP             R0, #0x64 ; 'd'
BEQ             loc_204F3C
CMP             R0, #0xC8
SUBNE           R0, R0, #0x12C
CMPNE           R0, #2
BHI             loc_204F34
BL              sub_112D3C
LDR             R1, [R4,#0x14]
BL              sub_113630
CMP             R0, #0
BEQ             loc_204F94
VLDR            S0, =1.0
B               loc_204F98
LDR             R0, [R4,#0x1C]
LDR             R1, =0x10624DD3
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#6
SUB             R0, R1, R0,ASR#31
ORR             R7, R0, #0x1000000
BL              sub_112D3C
MOV             R2, #1
MOV             R1, R7
MOV             R0, #0x64 ; 'd'
BL              sub_11DAF4
CMP             R0, #0
NOP
BNE             loc_204F34
BL              sub_112D3C
LDR             R1, [R4,#0x1C]
MOV             R2, #0
MOV             R0, #0x64 ; 'd'
BL              sub_11DAF4
NOP
NOP
B               loc_204F2C
VMOV.F32        S0, S16
CMP             R6, #0
LDRH            R0, [R5,#2]
ADDNE           R2, R6, #4
MOVEQ           R2, #0
MOV             R1, R8
BL              sub_145730
MOV             R0, #0
VPOP            {D8}
POP             {R4-R8,PC}
