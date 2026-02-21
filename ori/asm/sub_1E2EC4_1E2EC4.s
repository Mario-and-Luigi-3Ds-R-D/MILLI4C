PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
CMP             R0, #0
BEQ             loc_1E2FE0
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1E2FE0
LDR             R0, [R5]
LDR             R1, [R0,#0xBC]
ADD             R2, R1, #0x13800
ADD             R2, R2, #0x2C4
LDRH            R3, [R2,#0xC]
CMP             R3, #0
BNE             loc_1E2FE0
VLDR            S0, [R2,#0x1C]
VLDR            S1, =0.0
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1E2FE0
ADD             R1, R1, #0x16000
ADD             R1, R1, #0xBE0
MOV             R2, #0xFFFFFFFF
STR             R2, [R1]
LDR             R1, =dword_6E1314
LDR             R0, [R0,#0xBC]
LDR             R1, [R1]
ADD             R6, R0, #0x10000
ADD             R6, R6, #0x6B00
TST             R1, #1
BNE             loc_1E2F78
LDR             R0, =dword_6E1314
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1E2F78
LDR             R0, =flt_6E1318
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_6E131C - 0x6E1318)]
LDR             R0, =dword_6E1314
NOP
LDR             R1, =flt_6E1318
LDRD            R0, R1, [R1]
STRD            R0, R1, [R6,#0xE4]
LDR             R0, [R5]
LDR             R2, [R0,#0xBC]
ADD             R1, R2, #0x16800
VLDR            S0, [R1,#0x3C0]
VLDR            S1, [R1,#0x3CC]
VLDR            S2, [R1,#0x3E4]
VMUL.F32        S0, S0, S1
VLDR            S1, [R1,#0x3D8]
ADD             R1, R2, #0x13C00
VMUL.F32        S1, S1, S2
VMUL.F32        S0, S0, S1
VSTR            S0, [R1,#0x48]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x16800
ADD             R0, R0, #0x13C00
VLDR            S0, [R1,#0x3C4]
VLDR            S1, [R1,#0x3D0]
VLDR            S2, [R1,#0x3E8]
VMUL.F32        S0, S0, S1
VLDR            S1, [R1,#0x3DC]
VMUL.F32        S1, S1, S2
VMUL.F32        S0, S0, S1
VSTR            S0, [R0,#0x4C]
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_1EA504
