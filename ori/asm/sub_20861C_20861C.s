PUSH            {R4-R8,LR}
MOV             R4, R2
MOV             R7, R0
MOV             R6, R1
VPUSH           {D8-D9}
LDR             R0, [R2,#8]
LDR             R2, =off_6CE970
LDR             R1, =0x10D4A4
VLDR            S16, [R4,#0x6C]
TST             R0, #0xFF
LDR             R12, [R2]
MOV             R3, R1
VLDR            S17, =0.0
ADD             R1, R1, R12
VLDR            S2, =1.0
VLDR            S0, [R1,#4]
LDRH            R0, [R4]
LDR             R2, [R2]
VADDNE.F32      S16, S0, S16
SUB             R1, R0, #0x100
SUB             R1, R1, #0xBA
ADD             R5, R2, R3
VSUB.F32        S0, S16, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S1, S2
VLDRCC          S1, =-1.0
CMP             R1, #7; switch 7 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_20868C; jumptable 0020868C default case
DCD loc_2086B0; jump table for switch statement
VLDR            S0, [R4,#0x70]; jumptable 0020868C case 0
MOV             R0, R5
VMUL.F32        S1, S0, S1
VMOV.F32        S0, S16
BL              sub_5A1A48
NOP
NOP
B               def_20868C; jumptable 0020868C default case
VLDR            S0, [R4,#0x14]; jumptable 0020868C case 1
MOV             R0, R5
VCVT.F32.S32    S1, S0
VMOV.F32        S0, S16
BL              sub_5A12F8
NOP
NOP
B               def_20868C; jumptable 0020868C default case
VLDR            S0, [R4,#0x74]; jumptable 0020868C case 2
LDR             R0, [R4,#0x10]
VCVT.U32.F32    S0, S0
ANDS            R1, R0, #0xFF
VMOV            R0, S0
UXTH            R0, R0
BEQ             loc_208720
CMP             R1, #1
BEQ             loc_208740
CMP             R1, #2
BNE             def_20868C; jumptable 0020868C default case
B               loc_208760
VMOV            S0, R0
MOV             R0, R5
VCVT.F32.U32    S1, S0
VMOV.F32        S0, S16
BL              sub_5A12F8
NOP
NOP
B               def_20868C; jumptable 0020868C default case
VMOV            S0, R0
MOV             R0, R5
VCVT.F32.U32    S1, S0
VMOV.F32        S0, S16
BL              sub_5A14A4
NOP
NOP
B               def_20868C; jumptable 0020868C default case
VMOV            S0, R0
MOV             R0, R5
VCVT.F32.U32    S1, S0
VMOV.F32        S0, S16
BL              sub_5A1198
NOP
NOP
B               def_20868C; jumptable 0020868C default case
ADD             R1, R4, #0x70 ; 'p'; jumptable 0020868C cases 3-5
SUB             R0, R0, #0x100
VLDM            R1, {S18-S19}
SUBS            R0, R0, #0xBD
BEQ             loc_2087AC
CMP             R0, #1
VLDR            S1, =2.0
BEQ             loc_2087D8
CMP             R0, #2
BNE             loc_20881C
B               loc_208800
VMOV.F32        S2, S19
VMOV.F32        S1, S18
MOV             R0, R5
BL              sub_5A2D64
VMOV.F32        S2, S19
VMOV.F32        S1, S18
VMOV.F32        S0, S16
BL              sub_5896C4
VMOV.F32        S17, S0
NOP
B               loc_20881C
VADD.F32        S2, S19, S18
VMUL.F32        S1, S16, S1
MOV             R0, R5
VDIV.F32        S17, S1, S2
VMOV.F32        S2, S18
VMOV.F32        S1, S17
BL              sub_5A1974
NOP
NOP
B               loc_20881C
VADD.F32        S2, S19, S2
VMUL.F32        S1, S16, S1
MOV             R0, R5
VMUL.F32        S3, S2, S18
VDIV.F32        S2, S1, S3
VMOV.F32        S1, S17
BL              sub_5A1974
LDRH            R0, [R4]
SUB             R0, R0, #0x100
SUBS            R0, R0, #0xBD
CMPNE           R0, #1
BNE             def_20868C; jumptable 0020868C default case
CMP             R6, #0
VMOV.F32        S0, S17
LDRH            R0, [R4,#2]
ADDNE           R2, R6, #4
MOVEQ           R2, #0
MOV             R1, R7
BL              sub_145730
NOP
NOP
B               def_20868C; jumptable 0020868C default case
MOV             R0, R5; jumptable 0020868C case 6
BL              sub_5A18EC
VSTR            S16, [R5,#0xC]
VSTR            S16, [R5,#4]
MOV             R0, #0; jumptable 0020868C default case
VPOP            {D8-D9}
POP             {R4-R8,PC}
