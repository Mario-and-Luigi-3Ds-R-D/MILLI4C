PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R8, #1
MOV             R7, #0
VPUSH           {D8-D10}
SUB             SP, SP, #0x18
ADD             R6, R4, #0x800
LDRB            R0, [R0]
CMP             R0, #0
BEQ             loc_25CB20
CMP             R0, #1
BEQ             loc_25CB34
CMP             R0, #2
BEQ             loc_25CB48
CMP             R0, #3
MOVEQ           R0, R4
BLEQ            sub_25C754
B               loc_25CC48
MOV             R0, R4
BL              sub_25CED4
NOP
NOP
B               loc_25CC48
MOV             R0, R4
BL              sub_25C60C
NOP
NOP
B               loc_25CC48
LDRB            R0, [R4,#1]
CMP             R0, #0
BEQ             loc_25CB60
CMP             R0, #1
BNE             loc_25CC48
B               loc_25CBC8
ADD             R0, R4, #4
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             loc_25CC48
LDRB            R0, [R6,#1]
CMP             R0, #0
BEQ             loc_25CBA0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x14
ADD             R0, R4, #4
BL              sub_14C548
NOP
NOP
B               loc_25CBC0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
AND             R0, R0, #3
ADD             R1, R0, #0x11
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R4, #4
BL              sub_14C548
STRB            R8, [R4,#1]
B               loc_25CC48
MOV             R2, #0
MOV             R1, SP
ADD             R0, R4, #4
BL              sub_5C4F84
LDR             R0, [SP,#0x48+var_48]
LDR             R1, =0x43660000
CMP             R0, R1
BGE             loc_25CBF4
ORR             R1, R1, R1,LSL#13
CMP             R0, R1
BCC             loc_25CC48
LDR             R0, [R4,#0x7EC]
MOV             R5, R4
CMP             R0, #0
BEQ             loc_25CC0C
BL              sub_533330
STR             R7, [R5,#0x7EC]
LDR             R0, [R5,#0x7F0]
CMP             R0, #0
BEQ             loc_25CC20
BL              sub_533330
STR             R7, [R5,#0x7F0]
LDR             R0, [R5,#0x10]
CMP             R0, #0
ADDNE           R0, R5, #4
BLNE            sub_528B1C
LDR             R0, [R5,#0x404]
CMP             R0, #0
ADDNE           R0, R5, #0x3F8
BLNE            sub_528B1C
MOV             R0, #4
STRB            R0, [R5]
LDRB            R0, [R6,#0x31]
CMP             R0, #0
BEQ             loc_25CD70
LDRB            R0, [R6,#0x30]
ADD             R6, R4, #0x400
ADD             R6, R6, #0x1D4
CMP             R0, #0
LDR             R0, [R4,#0x834]
BEQ             loc_25CCB0
CMP             R0, #0
BNE             loc_25CD70
MOV             R0, R6
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_25CD70
LDR             R0, [R4,#0x7EC]
CMP             R0, #0
BEQ             loc_25CC9C
BL              sub_533330
STR             R7, [R4,#0x7EC]
ADD             SP, SP, #0x18
ADD             R0, R4, #0x3F8
VPOP            {D8-D10}
POP             {R4-R8,LR}
B               sub_528B1C
CMP             R0, #0
BEQ             loc_25CD7C
CMP             R0, #1
BNE             loc_25CD70
LDR             R0, [R4,#0x5FC]
ADD             R0, R0, #0x34 ; '4'
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_25CD70
MOV             R0, R6
BL              sub_5A26D0
LDR             R6, =off_6CE970
ADD             R2, R4, #0x400
LDR             R1, =0x2EB
MOV             R3, #1
LDR             R0, [R6]
ADD             R2, R2, #0x1C
STR             R7, [SP,#0x48+var_48]
BL              sub_52AEA8
LDR             R2, =0x19DEE8
LDR             R0, [R6]
VLDR            S2, =0.0039062
LDR             R5, [R4,#0x838]
ADD             R2, R2, R0; loc_19DEE8
ADD             R1, R4, #0x3F8
VLDR            S0, [R2]
VLDR            S1, [R5,#0x10]
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S2
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_25CD4C
LDR             R12, =0xFFE683CC
LDR             R2, =0x3018B
MOV             R3, #0
SUB             R0, R0, R12
BL              sub_503720
VSTR            S16, [R5,#0x10]
LDR             R0, [R4,#0x7EC]
CMP             R0, #0
BEQ             loc_25CD60
BL              sub_533330
STR             R7, [R4,#0x7EC]
ADD             R0, R4, #0x3F8
BL              sub_528B1C
MOV             R0, #2
STR             R0, [R4,#0x834]
ADD             SP, SP, #0x18
VPOP            {D8-D10}
POP             {R4-R8,PC}
MOV             R0, R6
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_25CD70
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R7, R0
LDR             R0, [R4,#0x838]
LDR             R5, [R0,#8]
MOV             R0, R7
BL              sub_464278
VLDR            S18, =1000.0
VLDR            S16, =0.0
MOV             R0, R7
VMUL.F32        S17, S0, S18
BL              sub_4642E0
VMUL.F32        S0, S0, S18
VSTR            S17, [SP,#0x48+var_3C]
VSTR            S16, [SP,#0x48+var_38]
ADD             R1, R5, #0x310
LDR             R0, =dword_6D1F40
VSTR            S0, [SP,#0x48+var_34]
VLDM            R1, {S17-S18}
BL              sub_546DB0
VMOV            S0, R0
VLDR            S20, =0.000015259
VSUB.F32        S1, S18, S17
ADD             R1, R5, #0x320
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VMUL.F32        S0, S0, S1
VADD.F32        S19, S17, S0
VLDM            R1, {S17-S18}
BL              sub_546DB0
VMOV            S0, R0
VSUB.F32        S1, S18, S17
LDR             R0, =dword_6D1F40
VLDR            S18, [R5,#0x318]
VLDR            S21, [R5,#0x31C]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VMUL.F32        S0, S0, S1
VADD.F32        S17, S17, S0
BL              sub_546DB0
VMOV            S0, R0
VSUB.F32        S1, S21, S18
ADD             R2, SP, #0x48+var_3C
MOV             R1, #0
MOV             R0, R6
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S20
VMUL.F32        S0, S0, S1
VADD.F32        S18, S18, S0
VMOV.F32        S0, S19
BL              sub_5A25D0
VLDR            S0, =1.0
VSTR            S16, [SP,#0x48+var_48]
VSTR            S0, [SP,#0x48+var_44]
ADD             R0, R4, #0x400
VSTR            S16, [SP,#0x48+var_40]
VLDR            S0, [R0,#0x20]
VMOV.F32        S2, S17
VMOV.F32        S1, S18
VNEG.F32        S0, S0
MOV             R2, SP
MOV             R1, #1
MOV             R0, R6
BL              sub_5A28C4
STR             R8, [R4,#0x834]
ADD             SP, SP, #0x18
VPOP            {D8-D10}
POP             {R4-R8,PC}
