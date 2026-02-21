PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #8
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_5A2484
LDR             R0, [R4,#4]
ADD             R1, R4, #0xC
BL              sub_2715F4
LDRB            R0, [R4,#0xB0]
CMP             R0, #0
BEQ             loc_26D3DC
CMP             R0, #1
BNE             locret_26D424
LDR             R0, [R4,#0x30]
ADD             R0, R0, #0x5C ; '\'
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             locret_26D424
LDR             R0, [R4,#4]
BL              sub_26FBCC
LDR             R0, [R4,#4]
POP             {R4,LR}
B               sub_26FBC8
LDR             R0, [R4,#0x30]
ADD             R0, R0, #0x34 ; '4'
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             locret_26D424
LDR             R0, =off_6CDF98
MOV             R1, #2
LDR             R0, [R0]
ADD             R0, R0, #0x12800
VLDR            S0, [R0,#0x184]
ADD             R0, R4, #8
BL              sub_5A2708
MOV             R0, #1
STRB            R0, [R4,#0xB0]
LDR             R0, [R4,#4]
POP             {R4,LR}
B               sub_270750
POP             {R4,PC}
