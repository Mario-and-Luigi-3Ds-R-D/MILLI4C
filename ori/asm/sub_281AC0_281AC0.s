PUSH            {R3-R7,LR}
MOV             R4, R0
ADD             R2, R0, #0x3FC
LDRB            R1, [R0,#4]
ADD             R0, R0, #0x400
CMP             R1, #1
BEQ             loc_281B3C
CMP             R1, #2
MOV             R7, #0
BEQ             loc_281BC0
CMP             R1, #3
BEQ             loc_281CF8
CMP             R1, #4
BNE             locret_281B38
ADD             R0, R4, #0x3A4
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             locret_281B38
MOV             R0, #0xFFFFFFFF
STRB            R7, [R4,#4]
REV             R0, R0
MOV             R1, SP
STR             R0, [SP,#0x18+var_18]
LDR             R0, [R4]
VLDR            S0, [R0,#0x5C]
ADD             R0, R4, #0x334
BL              sub_4E665C
MOV             R0, #1
STRB            R0, [R4,#0x419]
POP             {R3-R7,PC}
VLDR            S1, [R0,#0x14]
VLDR            S0, [R4,#0x30]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVGT           R1, #2
STRBGT          R1, [R4,#4]
VSTR            S0, [R0,#0x14]
LDR             R1, [R4]
VLDR            S5, [R4,#0x2C]
VLDR            S4, [R4,#0x34]
VLDR            S1, [R1,#0x80]
VLDR            S3, [R1,#0x84]
VLDR            S2, [R1,#0x88]
VADD.F32        S1, S1, S5
VADD.F32        S0, S3, S0
VADD.F32        S2, S2, S4
VSTR            S1, [R4,#0x3FC]
VSTR            S0, [R2,#4]
VSTR            S2, [R2,#8]
LDR             R1, [R4]
VLDR            S5, [R4,#0x2C]
ADD             R4, R4, #0x30 ; '0'
VLDR            S2, [R1,#0x80]
ADD             R1, R1, #0x84
VLDM            R4, {S3-S4}
VADD.F32        S2, S2, S5
VLDM            R1, {S0-S1}
VADD.F32        S0, S0, S3
VADD.F32        S1, S1, S4
VSTR            S2, [R0,#8]
ADD             R0, R0, #0xC
VSTM            R0, {S0-S1}
POP             {R3-R7,PC}
LDR             R1, [R4]
VLDR            S5, [R4,#0x2C]
VLDR            S3, [R4,#0x34]
VLDR            S4, [R4,#0x30]
VLDR            S2, [R1,#0x80]
VLDR            S1, [R1,#0x88]
VLDR            S0, [R1,#0x84]
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S4
ADD             R2, R2, #4
VSTR            S2, [R4,#0x3FC]
VSTM            R2, {S0-S1}
LDR             R1, [R4]
VLDR            S5, [R4,#0x2C]
VLDR            S2, [R1,#0x80]
VLDR            S1, [R1,#0x84]
VLDR            S0, [R1,#0x88]
ADD             R1, R4, #0x30 ; '0'
VADD.F32        S2, S2, S5
VLDM            R1, {S3-S4}
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S4
VSTR            S2, [R0,#8]
VSTR            S1, [R0,#0xC]
VSTR            S0, [R0,#0x10]
ADD             R0, R4, #0x1E4
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             locret_281B38
LDR             R0, =dword_6E1330
LDR             R6, =off_6CE970
LDR             R0, [R0]
LDR             R5, [R6]
TST             R0, #1
BNE             loc_281C84
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_281C84
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R3, =flt_711FE4
LDR             R1, =0x16D
ADD             R2, R4, #8
MOV             R0, R5
STR             R7, [SP,#0x18+var_18]
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
ADD             R3, R4, #0x58 ; 'X'
ADD             R2, R4, #8
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
STRB            R7, [R4,#0x419]
LDR             R0, [R6]
MOV             R1, #0x24 ; '$'
STR             R7, [SP,#0x18+var_18]
BL              sub_52B72C
MOV             R5, R0
LDR             R0, [R6]
LDR             R12, =0xFFE683CC
LDR             R2, =0x300BD
MOV             R3, #0
ADD             R1, R4, #8
SUB             R0, R0, R12
BL              sub_503720
LDR             R0, [R5,#0x19C]
ORR             R1, R0, #0x100000
MOV             R0, #3
STR             R1, [R5,#0x19C]
B               loc_281D18
ADD             R0, R4, #8
BL              sub_5C4A1C
CMP             R0, #0
NOP
BNE             locret_281B38
ADD             R0, R4, #0x1E4
BL              sub_5A26D0
MOV             R0, #5
STRB            R0, [R4,#4]
POP             {R3-R7,PC}
