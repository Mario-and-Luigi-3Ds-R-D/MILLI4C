PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R6, #0
VPUSH           {D8-D12}
SUB             SP, SP, #0x48
LDRSB           R12, [R0,#0x38]
LDR             R0, [R0,#8]
VLDR            S23, =0.0
CMP             R12, #6; switch 6 cases
VMOV.F32        S16, S23
LDR             R1, [R0,#0x24]
LDRD            R2, R3, [R0,#0x1C]
LDRCC           PC, [PC,R12,LSL#2]; switch jump
B               def_15545C; jumptable 0015545C default case, case 0
DCD def_15545C; jump table for switch statement
LDR             R12, [R4,#0x14]; jumptable 0015545C case 5
MOV             R6, #1
LDR             R5, [R12,#0x54]
STR             R5, [SP,#0x80+var_7C]
LDR             R12, [R12,#0x58]
VMOV            S19, R5
VMOV            S20, R12
STR             R12, [SP,#0x80+var_78]
B               def_15545C; jumptable 0015545C default case, case 0
LDR             R12, [R4,#0x14]; jumptable 0015545C case 4
LDR             R5, [R12,#0x5C]
STR             R5, [SP,#0x80+var_7C]
LDR             R12, [R12,#0x60]
VMOV            S19, R5
VMOV            S20, R12
STR             R12, [SP,#0x80+var_78]
B               def_15545C; jumptable 0015545C default case, case 0
LDR             R12, [R4,#0x14]; jumptable 0015545C case 3
LDR             R5, [R12,#0x64]
VMOV            S19, R5
STR             R5, [SP,#0x80+var_7C]
LDR             R5, [R12,#0x68]
STR             R5, [SP,#0x80+var_78]
LDR             R12, [R12,#0x6C]
VMOV            S20, R5
VMOV            S16, R12
STR             R12, [SP,#0x80+var_64]
LDRB            R12, [R0,#0xBA8]
CMP             R12, #0
BEQ             def_15545C; jumptable 0015545C default case, case 0
ADD             R2, R0, #0x800
ADD             R2, R2, #0x3AC
LDR             R1, [R0,#0xBB4]
LDM             R2, {R2,R3}
B               def_15545C; jumptable 0015545C default case, case 0
LDR             R12, [R4,#0x14]; jumptable 0015545C cases 1,2
LDR             R5, [R12,#0x30]
STR             R5, [SP,#0x80+var_7C]
LDR             R12, [R12,#0x34]
VMOV            S19, R5
VMOV            S20, R12
STR             R12, [SP,#0x80+var_78]
LDR             R5, [R0,#0x18]; jumptable 0015545C default case, case 0
VMOV            S3, R2
ADD             R12, R5, #0x28 ; '('
VLDR            S2, [R5,#0x24]
VLDM            R12, {S0-S1}
VSUB.F32        S21, S3, S2
VMOV            S2, R3
VSUB.F32        S18, S2, S0
VMOV            S0, R1
VMOV.F32        S2, S20
VSUB.F32        S22, S0, S1
VMOV.F32        S1, S19
VMOV.F32        S0, S18
BL              sub_589714
VMOV.F32        S17, S0
VCMP.F32        S16, S23
VLDR            S24, =1.0
VSTR            S21, [SP,#0x80+var_5C]
VSTR            S23, [SP,#0x80+var_58]
VSTR            S22, [SP,#0x80+var_54]
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1555D4
VMOV.F32        S3, S21
VMOV.F32        S2, S23
VMOV.F32        S0, S22
ADD             R1, SP, #0x80+var_5C
ADD             R0, SP, #0x80+var_5C
VMUL.F32        S1, S3, S3
VMLA.F32        S1, S2, S2
VMLA.F32        S1, S0, S0
VSQRT.F32       S4, S1
VDIV.F32        S1, S24, S4
VMUL.F32        S0, S22, S1
VMUL.F32        S3, S23, S1
VMUL.F32        S2, S21, S1
VSTR            S0, [SP,#0x80+var_54]
VMOV.F32        S0, S16
VSTM            R1, {S2-S3}
BL              sub_5E0C80
VMUL.F32        S2, S2, S17
VMUL.F32        S0, S0, S17
VMUL.F32        S1, S1, S17
ADD             R0, SP, #0x80+var_5C
VSTM            R0, {S0-S2}
VMOV.F32        S0, S17
ADD             R2, SP, #0x80+var_5C
MOV             R1, #0
ADD             R0, R5, #0x1DC
BL              sub_5A2B20
VMOV.F32        S16, S23
VMOV.F32        S2, S20
VMOV.F32        S1, S19
VMOV.F32        S0, S18
ADD             R2, SP, #0x80+var_4C
VSTR            S16, [SP,#0x80+var_4C]
VSTR            S24, [SP,#0x80+var_48]
VSTR            S16, [SP,#0x80+var_44]
MOV             R1, #1
ADD             R0, R5, #0x1DC
BL              sub_5A2954
NOP
NOP
BL              sub_4635D8
LDR             R2, [R5]
MOV             R1, R0
MOV             R0, R5
LDR             R2, [R2,#0x38]
BLX             R2
CMP             R6, #0
BEQ             loc_155688
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xF
MOV             R0, R5
BL              sub_14C548
VMOV.F32        S1, S16
VLDR            S0, =1080.0
MOV             R2, SP
VLDR            S2, =90.0
MOV             R1, #0
VSTR            S1, [SP,#0x80+var_80]
VSTR            S1, [SP,#0x80+var_7C]
VSTR            S0, [SP,#0x80+var_78]
VMOV.F32        S0, S17
ADD             R0, R5, #0x100
BL              sub_5A387C
NOP
NOP
B               loc_1556AC
MOV             R3, #0
MOV             R12, #0x100
VMOV.F32        S0, S16
STMEA           SP, {R3,R12}
LDR             R2, =unk_63FEB8
ADD             R1, SP, #0x80+var_5C
MOV             R0, R5
MOV             R3, #6
BL              sub_14D61C
LDR             R0, [R4,#8]
LDR             R0, [R0,#0x2AC]
CMP             R0, #0
BLNE            sub_2CA350
LDR             R1, =off_63FDB0
LDRD            R0, R1, [R1,#(off_63FE58 - 0x63FDB0)]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #0x48 ; 'H'
VPOP            {D8-D12}
POP             {R4-R6,PC}
