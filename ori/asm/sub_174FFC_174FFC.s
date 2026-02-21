ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R1,#0xA4]
MOV             R2, R1
LDR             R1, [R0,#4]
CMP             R1, #0
BEQ             locret_1751C8
LDR             R3, [R5,#0x464]
MOV             R4, #0
MOV             R6, R4
ADD             R1, R5, #0x400
MOV             R3, R3,LSL#21
MOV             R3, R3,LSR#29
CMP             R3, #6; switch 6 cases
LDRCC           PC, [PC,R3,LSL#2]; switch jump
B               def_175040; jumptable 00175040 default case
DCD loc_175060; jump table for switch statement
LDRSH           R2, [R0,#0x16]; jumptable 00175040 case 0
CMP             R2, #0
MOVLE           R4, #7
B               def_175040; jumptable 00175040 default case
MOV             R4, #2; jumptable 00175040 case 4
LDR             R2, [R2,#0xA8]; jumptable 00175040 case 1
LDR             R2, [R2,#0x38]
LDRB            R2, [R2,#0x1C]
TST             R2, #8
BEQ             loc_1750A8
LDR             R3, =unk_6731D8
AND             R2, R2, #7
LDRB            R2, [R3,R2]
LDRB            R3, [R0,#0x6C]
CMP             R2, R3
BHI             loc_1750A8
CMP             R3, R2,LSL#1
MOVCC           R4, #2
LDRH            R2, [R0,#0x16]
B               def_175040; jumptable 00175040 default case
LDRH            R2, [R1,#0x68]; jumptable 00175040 cases 2,3
CMP             R2, #1
BEQ             loc_1750E4
CMP             R2, #3
BEQ             loc_1750F8
CMP             R2, #2
BEQ             loc_1751C0
CMP             R2, #4
MOVEQ           R4, #6
BEQ             def_175040; jumptable 00175040 default case
CMP             R2, #0
BEQ             loc_175118
B               def_175040; jumptable 00175040 default case
LDRH            R2, [R1,#0x6A]
CMP             R2, #0
MOVEQ           R4, #1
MOVNE           R4, #2
B               def_175040; jumptable 00175040 default case
LDRSH           R2, [R1,#0xD0]
LDRSH           R3, [R1,#0xD2]
CMP             R2, R3
BGE             loc_1751B8
LDR             R2, [R5,#0x4EC]
TST             R2, #8
BNE             loc_1751B8
B               loc_1751C0
LDRSH           R2, [R0,#0x16]
CMP             R2, #0
BGT             def_175040; jumptable 00175040 default case
B               loc_175158
LDRH            R2, [R1,#0x68]; jumptable 00175040 case 5
CMP             R2, #1
MOVEQ           R4, #3
MOVEQ           R6, #1
BEQ             def_175040; jumptable 00175040 default case
CMP             R2, #3
BEQ             loc_17519C
CMP             R2, #2
BEQ             loc_1751C0
LDRSH           R2, [R0,#0x16]
CMP             R2, #0
BGT             def_175040; jumptable 00175040 default case
MOV             R4, #3
VLDR            S0, [R1,#0x70]; jumptable 00175040 default case
VLDR            S1, =256.0
ADD             R0, R0, #0x10
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
BL              sub_123CE8
LDR             R0, [R5]
MOV             R3, R6
MOV             R1, R4
MOV             R2, #1
LDR             R12, [R0,#0x8C]
MOV             R0, R5
POP             {R4-R6,LR}
BX              R12
LDRSH           R2, [R1,#0xD0]
LDRSH           R3, [R1,#0xD2]
CMP             R2, R3
BGE             loc_1751B8
LDR             R2, [R5,#0x4EC]
TST             R2, #8
BEQ             loc_1751C0
MOV             R4, #5
B               def_175040; jumptable 00175040 default case
MOV             R4, #4
B               def_175040; jumptable 00175040 default case
POP             {R4-R6,PC}
