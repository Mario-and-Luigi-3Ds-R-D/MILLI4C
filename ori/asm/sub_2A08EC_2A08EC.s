PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R8, R1
VPUSH           {D8}
SUB             SP, SP, #8
LDR             R0, [R0,#0x14]
CMP             R0, #0
BEQ             loc_2A0B24
LDRB            R0, [R4,#0xB4]
LDRB            R1, [R4,#0x1E]
CMP             R0, R1
BLS             loc_2A0B24
LDRB            R7, [R4,#0x133]
ADD             R6, R4, #0xF0
MOV             R0, R8
BL              sub_127FD4
MOV             R0, R8
BL              sub_128004
LDR             R0, [R4,#0x14]
VLDR            S3, =90.0
LDRB            R1, [R0,#0x5C]
BIC             R1, R1, #1
STRB            R1, [R0,#0x5C]
LDR             R0, [R4,#0x14]
MOV             R1, #0
STRB            R1, [R0,#0x68]
STRB            R1, [R0,#0x69]
VLDR            S0, [R4,#0x168]
VLDR            S1, [R4,#0x34]
VDIV.F32        S2, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S2, S3
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S1, [R4,#0x30]
VLDR            S2, =0.0
LDRB            R0, [R4,#0xB8]
VMUL.F32        S0, S0, S1
VLDR            S1, =0.5
MOV             R2, #0x3F800000
MOV             R1, #0
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VLDRGT          S1, =-0.5
CMP             R0, #0
ADD             R0, R4, #0x70 ; 'p'
VADD.F32        S0, S0, S1
VLDM            R6, {S1-S2}
MOVEQ           R5, #1
MOVNE           R5, #0
VLDM            R0, {S3-S4}
CMP             R5, #0
LDR             R0, [R4,#0x14]
VADD.F32        S1, S1, S3
VADD.F32        S2, S2, S4
VCVT.S32.F32    S0, S0
VCVT.F32.S32    S16, S0
VLDR            S0, [R6,#8]
STR             R2, [R0,#0x20]!
ADD             R3, R0, #0x10
STR             R1, [R0,#4]
STR             R1, [R0,#8]
VSTR            S1, [R0,#0xC]
STM             R3, {R1,R2}
ADD             R3, R0, #0x24 ; '$'
STR             R1, [R0,#0x18]
VADD.F32        S2, S2, S16
VSTR            S2, [R0,#0x1C]
STR             R1, [R0,#0x20]
STM             R3, {R1,R2}
MOV             R3, #0x100
VSTR            S0, [R0,#0x2C]
LDRBNE          R1, [R4,#0x1B]
LDRBEQ          R1, [R4,#0x19]
LDR             R0, [R4,#0x14]
MOV             R2, #0
BL              sub_11DCDC
CMP             R5, #0
LDRNE           R0, [R4,#0xD8]
LDREQ           R0, [R4,#0xD4]
MOV             R2, SP
MOV             R1, #0
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R7,LSL#24
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R4,#0x14]
BL              sub_12C9C4
LDR             R0, [R4,#0x14]
MOV             R1, R8
BL              sub_12CA08
LDRB            R0, [R4,#0xB4]
LDRB            R1, [R4,#0x1E]
VLDR            S0, [R6,#8]
MOV             R2, #0x3F800000
CMP             R0, R1
SUBCS           R0, R0, R1
LDRB            R1, [R4,#0xB8]
MOVCC           R0, #0
AND             R0, R0, #0xFF
CMP             R1, R0
ADD             R0, R4, #0x78 ; 'x'
VLDM            R6, {S1-S2}
MOV             R1, #0
MOVEQ           R5, #1
VLDM            R0, {S3-S4}
MOVNE           R5, #0
LDR             R0, [R4,#0x14]
CMP             R5, #0
VADD.F32        S1, S1, S3
VADD.F32        S2, S2, S4
STR             R2, [R0,#0x20]!
ADD             R3, R0, #0x10
STR             R1, [R0,#4]
STR             R1, [R0,#8]
VSTR            S1, [R0,#0xC]
STM             R3, {R1,R2}
VSUB.F32        S2, S2, S16
STR             R1, [R0,#0x18]
ADD             R3, R0, #0x24 ; '$'
VSTR            S2, [R0,#0x1C]
STR             R1, [R0,#0x20]
STM             R3, {R1,R2}
MOV             R3, #0x100
VSTR            S0, [R0,#0x2C]
LDRBNE          R1, [R4,#0x1C]
LDRBEQ          R1, [R4,#0x1A]
LDR             R0, [R4,#0x14]
MOV             R2, #0
BL              sub_11DCDC
CMP             R5, #0
LDRNE           R0, [R4,#0xD8]
LDREQ           R0, [R4,#0xD4]
MOV             R2, SP
MOV             R1, #0
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R7,LSL#24
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R4,#0x14]
BL              sub_12C9C4
LDR             R0, [R4,#0x14]
MOV             R1, R8
BL              sub_12CA08
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R8,PC}
