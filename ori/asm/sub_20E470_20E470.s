LDR             R0, =off_6CE970
PUSH            {R4-R6,LR}
MOV             R5, R2
LDR             R0, [R0]
BL              sub_52F538
MOV             R4, R0
SUB             R0, R5, #0x3E ; '>'
VLDR            S0, =0.0
VLDR            S1, =1.0
CMP             R0, #8; switch 8 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
POP             {R4-R6,PC}; jumptable 0020E498 default case
DCD loc_20E4C0; jump table for switch statement
LDRB            R0, [R4,#0x4B0]; jumptable 0020E498 case 0
CMP             R0, #0
BEQ             def_20E498; jumptable 0020E498 default case
VMOV.F32        S0, S1
POP             {R4-R6,PC}
LDRB            R0, [R4,#0x4AB]; jumptable 0020E498 case 1
CMP             R0, #0
BEQ             def_20E498; jumptable 0020E498 default case
B               loc_20E4CC
LDRB            R0, [R4,#0x4AE]; jumptable 0020E498 case 2
CMP             R0, #0
BEQ             def_20E498; jumptable 0020E498 default case
B               loc_20E4CC
LDRB            R0, [R4,#0x4B6]; jumptable 0020E498 case 3
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDRB            R0, [R4,#0x4B5]; jumptable 0020E498 case 4
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDRB            R0, [R4,#0x4B7]; jumptable 0020E498 case 5
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDRB            R0, [R4,#0x4B2]; jumptable 0020E498 case 6
CMP             R0, #0
BEQ             def_20E498; jumptable 0020E498 default case
B               loc_20E4CC
MOV             R0, R4; jumptable 0020E498 case 7
BL              sub_5ED958
CMP             R0, #0
LDRHNE          R0, [R0,#0x10]
LDRHEQ          R0, [R4,#0x10]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
