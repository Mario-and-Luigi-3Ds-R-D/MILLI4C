PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R1, [R0,#0x458]
LDR             R0, [R3,#8]
MOV             R6, R2
LDR             R2, [R3,#0xC]
VLDR            S0, =0.0039062
LDR             R1, [R1,R0,LSL#2]
CMP             R2, #0
MOV             R4, R3
LDRNE           R0, [R1,#4]
CMP             R2, #8; switch 8 cases
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_178C2C; jumptable 00178C2C default case
DCD loc_178C54; jump table for switch statement
CMP             R1, #0; jumptable 00178C2C case 0
LDRNE           R0, [R1,#4]
CMPNE           R0, #0
VLDRNE          S0, =1.0
BNE             loc_178CF0
B               def_178C2C; jumptable 00178C2C default case
LDRSH           R0, [R0,#8]; jumptable 00178C2C case 1
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
B               loc_178CF0
LDRSH           R0, [R0,#0xA]; jumptable 00178C2C case 2
VMOV            S0, R0
VCVT.F32.S32    S0, S0
B               loc_178CF0
VLDR            S1, [R0,#4]; jumptable 00178C2C case 3
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
B               loc_178CF0
LDRSH           R0, [R0,#0xC]; jumptable 00178C2C case 4
VMOV            S0, R0
VCVT.F32.S32    S0, S0
B               loc_178CF0
NOP; jumptable 00178C2C case 5
BL              sub_5C9BD0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               loc_178CF0
MOV             R1, #0; jumptable 00178C2C case 6
BL              sub_5C9BDC
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               loc_178CF0
MOV             R1, #1; jumptable 00178C2C case 7
BL              sub_5C9BDC
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               loc_178CF0
VLDR            S0, =0.0; jumptable 00178C2C default case
LDRH            R0, [R4,#2]
MOV             R2, R6
MOV             R1, R5
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
