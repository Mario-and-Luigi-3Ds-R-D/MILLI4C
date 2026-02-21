PUSH            {R4-R7,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0]
VLDR            S16, =1.0
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R4, #0x400
ADD             R0, R0, #8
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_5A2484
ADD             R1, R4, #0x400
LDR             R0, [R4,#4]
ADD             R1, R1, #0xC
BL              sub_2715F4
ADD             R5, R4, #0x400
LDR             R1, =off_6CDF98
VLDR            S0, [R5,#0x10]
VLDR            S1, [R5,#0x1C]
LDR             R0, [R4,#4]
LDR             R1, [R1]
VSUB.F32        S0, S0, S1
ADD             R0, R0, #0x400
MOV             R7, #1
LDR             R6, [R1,#0x124]
VSTR            S0, [R0,#0x188]
LDRB            R0, [R4,#0x11]
CMP             R0, #0
BNE             loc_26EF28
ADD             R0, R4, #0x3B0
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_26EF28
STRB            R7, [R4,#0x11]
LDR             R0, [R4,#4]
VLDR            S0, [R4,#0xC]
BL              sub_270880
LDRB            R0, [R4,#0x10]
CMP             R0, #0
BEQ             loc_26EF78
CMP             R0, #1
BEQ             loc_26EFA4
CMP             R0, #2
BEQ             loc_26F048
CMP             R0, #3
BNE             loc_26EF98
LDR             R0, [R4,#4]
ADD             R0, R0, #0x6C ; 'l'
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_26EF98
LDR             R0, [R4,#4]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,LR}
B               sub_270494
VLDR            S0, [R5,#0x1C]
VLDR            S1, [R5,#0x10]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_26EF98
LDR             R0, [R4,#4]
BL              sub_270708
STRB            R7, [R4,#0x10]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R4,#0x430]
ADD             R0, R0, #0x34 ; '4'
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_26EF98
LDR             R0, [R4,#4]
BL              sub_26FBCC
LDR             R0, [R4,#4]
NOP
BL              sub_27062C
LDR             R0, [R4,#4]
LDR             R2, =off_63EF14
VLDR            S17, =0.0
ADD             R3, R0, #0x400
STRB            R7, [R0,#0x65D]
LDM             R2, {R1,R2}
ADD             R3, R3, #0x1B8
STM             R3, {R1,R2}
STRB            R7, [R0,#0x65F]
STRB            R7, [R0,#0x688]
LDR             R0, [R4,#4]
ADD             R5, R0, #0x5B0
ADD             R0, R0, #0x400
ADD             R0, R0, #0x228
BL              sub_5A18EC
VSTR            S17, [R5,#0x84]
ADD             R0, R6, #0x400
VSTR            S17, [R5,#0x7C]
LDRD            R2, R3, [R0,#0x54]
MOV             R1, SP
STR             R2, [SP,#0x28+var_24]
STR             R3, [SP,#0x28+var_28]
VSTR            S16, [SP,#0x28+var_20]
LDR             R2, [R4,#4]
VLDR            S0, [R0,#0x4C]
ADD             R0, R2, #0x6C ; 'l'
BL              sub_5A2138
MOV             R0, #2
NOP
B               loc_26F0C0
LDR             R0, [R4,#4]
BL              sub_26E140
LDR             R0, [R4,#4]
ADD             R0, R0, #0x6C ; 'l'
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_26EF98
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_26F0A4
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_26F0A4
LDR             R0, =flt_711FD8
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S16, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R0, [R4,#4]
ADD             R2, R6, #0x400
LDR             R1, =flt_711FD8
VLDR            S0, [R2,#0x50]
ADD             R0, R0, #0x6C ; 'l'
BL              sub_5A1E58
MOV             R0, #3
STRB            R0, [R4,#0x10]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
