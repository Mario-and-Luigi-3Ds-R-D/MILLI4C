PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R0, #0
CMP             R1, #1
MOV             R7, R1
MOVLT           R7, #1
VPUSH           {D8}
SUB             SP, SP, #0xC
STR             R0, [SP,#0x38+var_34]
LDR             R9, [R4,#0x10]
LDR             R10, [R4,#8]
BL              sub_1348B4
MOV             R1, R0
LDR             R0, [R4,#0x44]
CMP             R10, #0
MOV             R2, R0,LSL#28
ORR             R1, R1, R2,LSR#31
BEQ             loc_12C904
LDR             R2, [R4]
ADD             R2, R2, #1
CMP             R2, R10
TSTNE           R0, #4
BEQ             loc_12C904
CMP             R1, #0
BNE             loc_12C904
LDR             R0, [R4,#0x2C]
CMP             R0, #0x70000000
ADDLT           R0, R0, R7
STRLT           R0, [R4,#0x2C]
MOV             R0, #0
CMP             R0, #8
ADDCC           R1, R4, R0,LSL#5
ADDCC           R1, R1, #0x50 ; 'P'
MOVCS           R1, #0
LDR             R1, [R1,#8]
CMP             R1, #0
BEQ             loc_12C458
LDRB            R2, [R1,#0x11]
CMP             R2, #3
CMPNE           R2, #4
BEQ             loc_12C498
ADD             R0, R0, #1
CMP             R0, #8
BLT             loc_12C42C
LDR             R0, [R4,#4]
MOV             R11, #0
SUB             R0, R0, #0x12C
CMP             R0, #2
BHI             loc_12C574
CMP             R9, #0
ADDNE           R0, R4, #0x50 ; 'P'
ADDNE           R2, R4, #0x150
BEQ             loc_12C4D0
LDR             R1, [R0,#8]
CMP             R1, #0
BNE             loc_12C4D0
B               loc_12C4AC
MOV             R0, R4
BL              sub_13F9EC
NOP
NOP
B               loc_12C464
ADD             R0, R0, #0x20 ; ' '
CMP             R0, R2
BNE             loc_12C488
MOV             R1, R4
MOV             R0, R9
BL              sub_135204
CMP             R0, #0
NOP
BEQ             loc_12C5A4
LDR             R0, [R4,#0x344]
CMP             R0, #0
LDRNE           R0, [R4,#0x34C]
CMPNE           R0, #0
BEQ             loc_12C574
BL              sub_133EF4
MOVS            R5, R0
NOP
BEQ             loc_12C558
LDR             R0, [R4,#0x344]
MOV             R1, R5
STR             R0, [R5]
LDR             R0, [R4,#0x34C]
STR             R0, [R5,#4]
LDR             R0, [R4,#0x348]
STR             R0, [R5,#8]
LDR             R0, [R4,#0x350]
CMP             R0, #0
MOVNE           R0, #1
STRB            R0, [R5,#0x10]
MOV             R0, R10
STR             R11, [R5,#0xC]
BL              sub_13F00C
ADD             R0, R4, #0x50 ; 'P'
ADD             R1, R4, #0x150
LDR             R2, [R0,#8]
CMP             R2, #0
BEQ             loc_12C5C0
ADD             R0, R0, #0x20 ; ' '
CMP             R0, R1
BNE             loc_12C534
LDR             R0, [R4,#0x44]
ORR             R0, R0, #0x80
STR             R0, [R4,#0x44]
ADDS            R0, R4, #0x344
BEQ             loc_12C574
MOV             R1, #0
MOV             R2, R1
MOV             R3, R1
MOV             R12, R1
STM             R0, {R1-R3,R12}
CMP             R9, #0
BEQ             loc_12C69C
LDR             R0, [R4,#0x44]
TST             R0, #4
TSTNE           R0, #0x80
BEQ             loc_12C60C
BIC             R0, R0, #0x80
STR             R0, [R4,#0x44]
LDRB            R0, [R10,#4]
CMP             R0, #1
BEQ             loc_12C600
B               loc_12C60C
MOV             R1, #1
MOV             R0, R4
BL              sub_13FCDC
ADD             SP, SP, #0xC
MOV             R0, #0
VPOP            {D8}
POP             {R4-R11,PC}
STR             R5, [R0,#8]
LDR             R1, [R5]
STR             R1, [R0,#0xC]
LDR             R1, [R5,#4]
STR             R1, [R0,#0x10]
LDR             R1, [R4,#0x4C]
STR             R1, [R0,#0x14]
LDR             R1, [R4,#0x4C]
ADD             R2, R1, #1
STR             R2, [R4,#0x4C]
LDR             R2, [R5]
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
LDR             R1, [R4,#0x20]
STR             R1, [R0,#0x18]
B               loc_12C54C
MOV             R1, #0
MOV             R0, R10
BL              sub_14121C
MOV             R0, R9
BL              sub_137788
CMP             R0, #0x12C
ADDLT           R5, R4, #0x1C4
ADDLT           R6, R4, #0x304
BGE             loc_12C69C
MOV             R0, R5
LDR             R0, [R0]
CMP             R0, #9
NOP
BEQ             loc_12C690
MOV             R0, R5
BL              sub_1341F8
MOV             R0, R5
NOP
LDR             R0, [R0]
CMP             R0, #0
NOP
BEQ             loc_12C67C
CMP             R0, #1
LDREQ           R0, [R4,#0x48]
ORREQ           R1, R0, #2
BEQ             loc_12C68C
CMP             R0, #2
LDREQ           R0, [R4,#0x48]
ORREQ           R1, R0, #4
BEQ             loc_12C68C
B               loc_12C690
LDR             R0, [R4,#0x48]
ORR             R1, R0, #1
STR             R1, [R4,#0x48]
B               loc_12C690
STR             R1, [R4,#0x48]
ADD             R5, R5, #0x50 ; 'P'
CMP             R5, R6
BCC             loc_12C624
MOV             R1, R7
ADD             R0, R4, #0x190
BL              sub_134554
VLDR            S17, =0.0039216
CMP             R0, #0
BNE             loc_12C6C0
LDR             R0, [R4,#0x48]
TST             R0, #2
BEQ             loc_12C770
CMP             R9, #0
BEQ             loc_12C6D4
MOV             R0, R9
BL              sub_13F7FC
VSTR            S0, [R4,#0x30]
ADD             R0, R4, #0x190
BL              sub_141708
VLDR            S1, [R4,#0x30]
MOV             R7, #0
MOV             R8, #1
VMUL.F32        S16, S0, S1
MOV             R5, R7
ADD             R1, R5, R5,LSL#2
ADD             R6, R4, R1,LSL#4
ADD             R0, R6, #0x1C4
LDR             R0, [R0]
CMP             R0, R8
NOP
BNE             loc_12C718
ADD             R0, R6, #0x1C4
BL              sub_134244
ADD             R7, R7, R0
ADD             R5, R5, #1
CMP             R5, #4
BLT             loc_12C6F0
VMOV            S0, R7
LDR             R0, [R4,#0x18]
CMP             R0, #0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S17
VADD.F32        S0, S16, S0
BEQ             loc_12C758
LDRB            R0, [R0,#0x24]
VLDR            S2, =0.007874
VMOV            S1, R0
VCVT.F32.U32    S1, S1
VMUL.F32        S1, S1, S2
VMUL.F32        S0, S1, S0
VLDR            S1, =0.0
MOV             R0, R10
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S1
BL              sub_13F1A0
ADD             R0, R4, #0x190
BL              sub_13459C
CMP             R0, #0
NOP
BEQ             loc_12C7DC
CMP             R9, #0
BEQ             loc_12C900
LDR             R0, [R4,#0x48]
TST             R0, #4
BEQ             loc_12C878
MOV             R0, R9
LDR             R0, [R0,#8]
LDR             R0, [R0,#0x10]
SUB             R0, R0, #0x12C
CMP             R0, #2
BHI             loc_12C7C4
MOV             R0, R9
LDR             R0, [R0,#0x40]
LDRSB           R0, [R0,#0x1E]
CMP             R0, #1
BGT             loc_12C878
LDR             R0, [R4,#0x18]
CMP             R0, #0
LDRBNE          R0, [R0,#0x25]
CMPNE           R0, #0x40 ; '@'
BNE             loc_12C878
B               loc_12C808
NOP
BL              sub_133F4C
CMP             R0, #0
NOP
BNE             loc_12C900
MOV             R1, #0
MOV             R0, R4
BL              sub_13FCDC
NOP
NOP
B               loc_12C900
MOV             R0, R9
BL              sub_13F78C
VMOV.F32        S16, S0
MOV             R7, #0
MOV             R8, #2
MOV             R5, R7
ADD             R0, R5, R5,LSL#2
ADD             R6, R4, R0,LSL#4
ADD             R0, R6, #0x1C4
LDR             R0, [R0]
CMP             R0, R8
NOP
BNE             loc_12C848
ADD             R0, R6, #0x1C4
BL              sub_134244
ADD             R7, R7, R0
ADD             R5, R5, #1
CMP             R5, #4
BLT             loc_12C820
VMOV            S0, R7
VLDR            S1, =180.0
MOV             R1, #0
MOV             R0, R4
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S1
VADD.F32        S0, S16, S0
BL              sub_1359BC
LDR             R0, [R4,#0x48]
TST             R0, #1
BEQ             loc_12C900
MOV             R0, R9
BL              sub_13590C
LDR             R1, [R4,#0x1C0]
MOV             R8, #0
MOV             R7, R8
ADD             R0, R0, R1
MOV             R5, R8
STR             R0, [SP,#0x38+var_38]
ADD             R1, R5, R5,LSL#2
ADD             R6, R4, R1,LSL#4
ADD             R0, R6, #0x1C4
LDR             R0, [R0]
CMP             R0, R8
NOP
BNE             loc_12C8CC
ADD             R0, R6, #0x1C4
BL              sub_134244
ADD             R7, R7, R0
ADD             R5, R5, #1
CMP             R5, #4
BLT             loc_12C8A4
LDRH            R0, [SP,#0x38+var_38+2]
MOV             R1, SP
ADD             R0, R0, R7
STRH            R0, [SP,#0x38+var_38+2]
LDR             R2, [R4,#0x18]
MOV             R0, R4
BL              sub_135E00
MOV             R0, R10
NOP
BL              sub_13337C
STR             R11, [R4,#0x48]
LDR             R0, [R4,#4]
SUB             R0, R0, #0x12C
CMP             R0, #2
BHI             loc_12C960
LDR             R1, [R4,#0x20]
LDR             R5, [R4,#0x10]
ORRS            R0, R1, R5
BEQ             loc_12C960
CMP             R5, #0
CMPNE           R1, #0
BEQ             loc_12C958
MOV             R0, R5
BL              sub_12B880
CMP             R0, #0
NOP
BEQ             loc_12C958
MOV             R0, R5
BL              sub_12CD2C
CMP             R0, #0
NOP
BNE             loc_12C960
MOV             R0, R4
BL              sub_135F80
LDR             R0, [SP,#0x38+var_34]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R11,PC}
