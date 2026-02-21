PUSH            {R4-R8,LR}
ADD             R1, R0, #0x400
MOV             R6, R0
ADD             R1, R1, #0x198
VPUSH           {D8}
SUB             SP, SP, #0x10
MOV             R2, #1
MOV             R4, R1
MOV             R0, SP
BL              sub_14C614
MOV             R0, #0x400
BL              sub_11C418
VMOV            S0, R0
VLDR            S16, =0.5
VLDR            S1, [SP,#0x30+var_30]
LDR             R5, =off_6CE970
LDR             R7, =0xFFE683CC
LDR             R1, =0x300DC
VCVT.F32.U32    S0, S0
MOV             R2, #0
VMUL.F32        S2, S0, S16
VDIV.F32        S0, S1, S2
VSTR            S0, [SP,#0x30+var_30]
LDR             R0, [R5]
SUB             R0, R0, R7
BL              sub_503414
MOV             R2, #1
MOV             R1, R4
MOV             R0, SP
BL              sub_14C614
MOV             R0, #0x400
BL              sub_11C418
VMOV            S0, R0
VLDR            S1, [SP,#0x30+var_30]
LDR             R1, =0x300DE
MOV             R2, #0
VCVT.F32.U32    S0, S0
VMUL.F32        S2, S0, S16
VDIV.F32        S0, S1, S2
VSTR            S0, [SP,#0x30+var_30]
LDR             R0, [R5]
SUB             R0, R0, R7
BL              sub_503414
LDR             R0, [R6,#0x584]
LDR             R4, [R6,#0x580]
MOV             R8, #0
CMP             R0, R4
MOVNE           R5, #2
BEQ             loc_26CF28
LDR             R0, [R4]
STRB            R8, [R0,#0x56C]
STRB            R8, [R0,#0xF6]
STRB            R5, [R0,#0x3F8]
LDR             R0, [R0,#0x71C]
CMP             R0, #0
BEQ             loc_26CF18
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R6,#0x584]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_26CEF0
LDR             R7, [R6,#0x580]
MOV             R5, R0
CMP             R7, R5
BEQ             loc_26CF7C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_26CF68
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26CF68
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26CF38
LDR             R0, [R6,#0x580]
STR             R0, [R6,#0x584]
LDR             R0, [R6,#0x6C8]!
CMP             R0, #0
BEQ             loc_26CF9C
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R2, [R6,#8]
ADD             R0, R6, #4
CMP             R2, R0
BNE             loc_26CFD4
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_26CFC4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R8, [R6]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R8,PC}
LDR             R1, [R6,#4]
ADD             R0, R6, #4
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R0, [R6,#4]
STR             R0, [R6,#8]
B               loc_26CFC4
