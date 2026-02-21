PUSH            {R4-R8,LR}
MOV             R6, R0
LDR             R8, =off_6CE970
VPUSH           {D8}
LDRB            R1, [R0,#0x114]
LDR             R0, [R8]
VLDR            S17, =370.0
CMP             R1, #1
BEQ             loc_2A5254
CMP             R1, #2
BEQ             loc_2A5390
CMP             R1, #3
BNE             loc_2A5388
LDR             R1, =0x19DFE8
ADD             R4, R6, #0x24 ; '$'
LDRB            R2, [R6,#0x115]
LDR             R0, [R0,R1]
MOV             R1, R4
BL              sub_4D37F4
VSTR            S17, [R4,#8]
MOV             R0, R6
BL              sub_2A4E0C
LDR             R0, [R6,#0x1D4]
CMP             R0, #0
BEQ             loc_2A523C
LDRH            R1, [R0,#0xE]
TST             R1, #1
BEQ             loc_2A5220
LDRB            R1, [R0,#0x16E]
CMP             R1, #0
BEQ             loc_2A5388
LDRB            R1, [R0,#0x172]
CMP             R1, #0
BEQ             loc_2A523C
BL              sub_532B54
CMP             R0, #0
NOP
BNE             loc_2A5388
LDR             R0, [R6]
LDR             R1, [R0,#4]
MOV             R0, R6
VPOP            {D8}
POP             {R4-R8,LR}
BX              R1
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
VLDR            S1, =0.0039062
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R6, #0x1B8
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_5F1A04
VMOV.F32        S16, S0
ADD             R5, R6, #0x124
ADD             R7, R6, #0x24 ; '$'
MOV             R4, #0
LDR             R2, [R5,#0x14]
ADD             R3, R5, R4,LSL#2
VMOV.F32        S0, S16
LDR             R1, [R3,#8]
LDRB            R0, [R5,#1]
LDR             R3, [R3,#0x18]
BL              sub_1CB1F8
ADD             R0, R7, R4,LSL#2
ADD             R4, R4, #1
CMP             R4, #3
VSTR            S0, [R0]
BLT             loc_2A5288
LDR             R0, [R8]
VLDR            S1, [R6,#0x2C]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0xC400
VLDR            S0, [R0,#(loc_10C4EC - 0x10C400)]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VSTRCC          S0, [R6,#0x2C]
LDR             R0, [R6,#0x1DC]
CMP             R0, #0
BEQ             loc_2A5310
MOV             R0, #0x400
BL              sub_11C418
MOV             R0, R0,LSR#1
VMOV            S0, R0
VLDR            S1, [R6,#0x24]
LDR             R0, [R6,#0x1DC]
ADD             R1, R0, #0x10
VCVT.F32.U32    S2, S0
LDR             R0, =unk_6EB568
VDIV.F32        S0, S1, S2
BL              sub_51CC84
ADD             R0, R6, #0x1C4
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_2A5388
LDR             R0, [R6,#0x1D4]
MOV             R4, #0
CMP             R0, #0
BEQ             loc_2A533C
BL              sub_533330
STR             R4, [R6,#0x1D4]
MOV             R0, #0x118
VLDR            S0, =130.0
LDRSH           R0, [R0,R6]
MOV             R2, #1
MOV             R1, #0xF0
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VSTR            S1, [R6,#0x24]
VSTR            S0, [R6,#0x28]
VSTR            S17, [R6,#0x2C]
LDR             R0, [R8]
BL              sub_52F9B4
CMP             R0, #0
STR             R0, [R6,#0x1D4]
STRHNE          R4, [R0,#0xA]
MOV             R0, R6
BL              sub_2A4E0C
MOV             R0, #2
STRB            R0, [R6,#0x114]
VPOP            {D8}
POP             {R4-R8,PC}
MOV             R0, R6
BL              sub_2A4E60
CMP             R0, #0
MOVNE           R0, #3
BNE             loc_2A5384
VPOP            {D8}
POP             {R4-R8,PC}
