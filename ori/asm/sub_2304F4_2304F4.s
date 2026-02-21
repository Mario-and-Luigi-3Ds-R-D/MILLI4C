PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x464]
TST             R0, #0x10000
BNE             locret_230680
LDR             R0, [R4]
LDR             R1, [R0,#0x1B0]
MOV             R0, R4
BLX             R1
LDRB            R0, [R4,#0xDE]
TST             R0, #1
BEQ             loc_2305CC
LDR             R0, [R4]
ADD             R1, R4, #0x164
LDR             R2, [R0,#0xFC]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x1AC
LDR             R2, [R0,#0x148]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x1F4
LDR             R2, [R0,#0x168]
MOV             R0, R4
BLX             R2
VLDR            S0, [R4,#0x108]
VLDR            S1, [R4,#0x124]
ADD             R1, R4, #0x164
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x108]
VLDR            S0, [R4,#0x10C]
VLDR            S1, [R4,#0x128]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x10C]
VLDR            S0, [R4,#0x110]
VLDR            S1, [R4,#0x12C]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x110]
LDR             R0, [R4]
LDR             R2, [R0,#0x100]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x1AC
LDR             R2, [R0,#0x14C]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x1F4
LDR             R2, [R0,#0x16C]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
LDR             R1, [R0,#0x80]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             locret_230680
LDR             R0, [R4]
LDR             R1, [R0,#0xA4]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0xC4]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0xA8]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0xC8]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
ADD             R1, R4, #0x3F8
LDR             R2, [R0,#0x184]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x400
ADD             R1, R1, #0x28 ; '('
MOV             R5, R1
LDR             R2, [R0,#0x1A0]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
ADD             R1, R4, #0x3F8
LDR             R2, [R0,#0x188]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x1A4]
MOV             R0, R4
POP             {R4-R6,LR}
BX              R2
POP             {R4-R6,PC}
