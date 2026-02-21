PUSH            {R4-R11,LR}
CMP             R1, #0
MOV             R6, R0
MOV             R8, #0
MOV             R2, #1
LDR             R3, =off_6CE970
LDR             R11, =0xFFE683CC
VPUSH           {D8-D9}
VMOV.F32        S19, S0
SUB             SP, SP, #0xC
LDR             R12, [R0,#0x814]
LDR             R12, [R12,#8]
BEQ             loc_25BDD0
CMP             R1, #1
BNE             loc_25BFE4
B               loc_25BEE8
LDR             R1, [R6,#0x10]
LDR             R5, [R6,#0xC]
VLDR            S16, [R12,#0x300]
VLDR            S18, [R12,#0x370]
CMP             R1, R5
VLDR            S17, [R6,#0x1C]
VLDR            S19, [R6,#0x24]
MOVNE           R10, #2
MOVNE           R9, R3
BEQ             loc_25BFE4
LDR             R4, [R5]
VMOV.F32        S0, S16
ADD             R7, R4, #0x800
STRB            R10, [R4]
STRB            R8, [R4,#1]
LDRB            R0, [R4,#0x801]
CMP             R0, #0
BEQ             loc_25BE50
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x1A
ADD             R0, R4, #4
BL              sub_14C548
LDR             R0, [R9]
LDR             R2, =0x3018C
MOV             R3, #0
ADD             R1, R4, #4
SUB             R0, R0, R11
BL              sub_503720
NOP
NOP
B               loc_25BED4
ADD             R0, R4, #0x400
ADD             R0, R0, #0x1C
MOV             R1, SP
VLDR            S1, [R0]
VLDR            S3, [R0,#4]
VLDR            S2, [R0,#8]
VSUB.F32        S1, S17, S1
VSUB.F32        S3, S18, S3
VSUB.F32        S2, S19, S2
ADD             R0, R4, #0x400
ADD             R0, R0, #0x1D4
VSTR            S1, [SP,#0x40+var_40]
VSTR            S3, [SP,#0x40+var_3C]
VSTR            S2, [SP,#0x40+var_38]
BL              sub_5A367C
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xE
ADD             R0, R4, #4
BL              sub_14C548
MOV             R0, #1
STRB            R8, [R4,#0x830]
STRB            R0, [R4,#0x831]
STR             R8, [R4,#0x834]
LDRB            R0, [R7]
CMP             R0, #0
BEQ             loc_25BED4
LDR             R0, [R9]
LDR             R2, =0x30182
MOV             R3, #0
ADD             R1, R4, #4
SUB             R0, R0, R11
BL              sub_503720
LDR             R0, [R6,#0x10]
ADD             R5, R5, #0xC
CMP             R0, R5
BNE             loc_25BDF8
B               loc_25BFE4
LDR             R1, [R6,#0x10]
LDR             R5, [R6,#0xC]
VLDR            S17, [R12,#0x370]
VLDR            S16, [R6,#0x1C]
CMP             R1, R5
VLDR            S18, [R6,#0x24]
MOVNE           R9, R2
MOVNE           R10, R3
BEQ             loc_25BFE4
LDR             R4, [R5]
VMOV.F32        S0, S19
ADD             R7, R4, #0x800
STRB            R9, [R4]
STRB            R8, [R4,#1]
LDRB            R0, [R4,#0x801]
CMP             R0, #0
BEQ             loc_25BF64
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0x1A
ADD             R0, R4, #4
BL              sub_14C548
LDR             R0, [R10]
LDR             R2, =0x3018C
MOV             R3, #0
ADD             R1, R4, #4
SUB             R0, R0, R11
BL              sub_503720
NOP
NOP
B               loc_25BFD4
ADD             R0, R4, #0x400
ADD             R0, R0, #0x1C
MOV             R1, SP
VLDM            R0, {S1-S3}
ADD             R0, R4, #0x400
ADD             R0, R0, #0x1D4
VSUB.F32        S1, S16, S1
VSUB.F32        S3, S18, S3
VSUB.F32        S2, S17, S2
VSTMEA          SP, {S1-S3}
BL              sub_5A367C
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0xE
ADD             R0, R4, #4
BL              sub_14C548
STRB            R9, [R4,#0x831]
STRB            R9, [R4,#0x830]
STR             R8, [R4,#0x834]
LDRB            R0, [R7]
CMP             R0, #0
BEQ             loc_25BFD4
LDR             R0, [R10]
LDR             R2, =0x30180
MOV             R3, #0
ADD             R1, R4, #4
SUB             R0, R0, R11
BL              sub_503720
LDR             R0, [R6,#0x10]
ADD             R5, R5, #0xC
CMP             R0, R5
BNE             loc_25BF0C
LDRB            R0, [R6,#0x810]
CMP             R0, #0
VLDRNE          S16, =4.0
MOVNE           R4, #0
BEQ             loc_25C030
MOV             R0, #0xFFFFFF00
VMOV.F32        S0, S16
REV             R0, R0
MOV             R1, SP
STR             R0, [SP,#0x40+var_40]
ADD             R0, R4, R4,LSL#1
RSB             R0, R0, R4,LSL#8
ADD             R0, R6, R0,LSL#2
ADD             R0, R0, #0x354
BL              sub_4E665C
ADD             R4, R4, #1
CMP             R4, #2
BCC             loc_25BFF8
STRB            R8, [R6,#0x810]
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4-R11,PC}
