PUSH            {R0-R11,LR}
MOV             R4, R0
MOV             R5, R2
MOV             R6, R3
VPUSH           {D8-D14}
SUB             SP, SP, #0x6C
LDR             R1, [R0,#0xA8]
LDRB            R9, [R0,#0x133]
VLDR            S17, [R0,#0x28]
LDR             R0, [R0,#0xAC]
CMP             R1, #0x3F800000
LDR             R8, [SP,#0xD8+arg_0]
CMPEQ           R0, #0x3F800000
STR             R0, [SP,#0xD8+var_94]
MOVNE           R0, #1
MOVEQ           R0, #0
STR             R0, [SP,#0xD8+var_90]
LDR             R0, [SP,#0xD8+var_30]
VLDR            S25, =1.0
STR             R1, [SP,#0xD8+var_AC]
BL              sub_127FD4
LDR             R0, [SP,#0xD8+var_30]
BL              sub_128004
ADD             R1, R4, #0x48 ; 'H'
VLDR            S1, [R5]
VLDR            S0, [R5,#4]
VLDR            S24, [R5,#8]
CMP             R6, R8
VLDM            R1, {S2-S3}
ADD             R1, R4, #0x50 ; 'P'
VMOV.F32        S27, S24
VMOV.F32        S21, S24
VADD.F32        S23, S1, S2
VADD.F32        S16, S0, S3
VLDM            R1, {S0-S1}
ADD             R1, R4, #0x60 ; '`'
MOVNE           R10, #0
VLDM            R1, {S2-S3}
ADD             R1, R4, #0x58 ; 'X'
VADD.F32        S28, S23, S0
VADD.F32        S19, S16, S1
VLDM            R5, {S0-S1}
VADD.F32        S26, S0, S2
VADD.F32        S20, S1, S3
VLDM            R1, {S2-S3}
VADD.F32        S22, S0, S2
VADD.F32        S18, S1, S3
BEQ             loc_29F98C
LDR             R2, [R4,#0xB0]
ADD             R5, R6, R6,LSL#2
MOV             R1, #8
ADD             R1, R1, R5,LSL#2
LDR             R0, [R4,#4]
LDRB            R1, [R2,R1]
CMP             R1, #0
LDRNE           R1, [R4,#0xE8]
LDREQ           R1, [R4,#0xEC]
CMP             R0, #0
BIC             R1, R1, #0xFF000000
ORR             R7, R1, R9,LSL#24
BEQ             loc_29F740
MOV             R1, #4
ADD             R11, R1, R5,LSL#2
LDRB            R1, [R2,R11]
CMP             R1, #0xFF
BEQ             loc_29F740
ADD             R2, SP, #0xD8+var_78
MOV             R1, #0
STR             R7, [SP,#0xD8+var_78]
BL              sub_12C9C4
LDR             R2, [R4,#4]
MOV             R1, #0
VMOV.F32        S0, S24
ADD             R0, R2, #0x20 ; ' '
LDR             R2, [SP,#0xD8+var_AC]
STR             R1, [R0,#4]
MOV             R3, #0x100
STR             R2, [R0]
STR             R1, [R0,#8]
STR             R1, [R0,#0xC]
STR             R1, [R0,#0x10]
LDR             R2, [SP,#0xD8+var_94]
STR             R1, [R0,#0x18]
STR             R2, [R0,#0x14]
STR             R1, [R0,#0x1C]
STR             R1, [R0,#0x20]
STR             R1, [R0,#0x24]
VSTR            S25, [R0,#0x28]
STR             R1, [R0,#0x2C]
LDR             R1, [R4,#4]
MOV             R2, #0
ADD             R1, R1, #0x20 ; ' '
VSTR            S23, [R1,#0xC]
VSTR            S16, [R1,#0x1C]
VSTR            S0, [R1,#0x2C]
LDR             R1, [R4,#4]
LDR             R0, [SP,#0xD8+var_90]
STRB            R0, [R1,#0x71]
LDR             R1, [R4,#0xB0]
LDR             R0, [R4,#4]
LDRB            R1, [R1,R11]
BL              sub_11DCDC
LDR             R0, [R4,#4]
LDR             R1, [SP,#0xD8+var_30]
BL              sub_12CA08
LDR             R1, [R4,#8]
MOVS            R0, R1
BEQ             loc_29F7E8
LDR             R1, [R4,#0xB0]
MOV             R2, #5
ADD             R11, R2, R5,LSL#2
LDRB            R1, [R1,R11]
CMP             R1, #0xFF
BEQ             loc_29F7E8
ADD             R2, SP, #0xD8+var_78
MOV             R1, #0
STR             R7, [SP,#0xD8+var_78]
BL              sub_12C9C4
LDR             R3, [R4,#8]
MOV             R1, #0
MOV             R2, #0x3F800000
ADD             R0, R3, #0x20 ; ' '
ADD             R12, R0, #0x10
STR             R1, [R0,#4]
STR             R2, [R0]
STR             R1, [R0,#8]
VSTR            S28, [R0,#0xC]
STM             R12, {R1,R2}
MOV             R3, R0
STR             R1, [R0,#0x18]
VSTR            S19, [R0,#0x1C]
VMOV.F32        S0, S24
STR             R1, [R0,#0x20]!
ADD             R0, R0, #4
STM             R0, {R1,R2}
MOV             R2, #0
VSTR            S0, [R3,#0x2C]
LDR             R1, [R4,#8]
MOV             R3, #0x100
STRB            R10, [R1,#0x71]
LDR             R1, [R4,#0xB0]
LDR             R0, [R4,#8]
LDRB            R1, [R1,R11]
BL              sub_11DCDC
LDR             R0, [R4,#8]
LDR             R1, [SP,#0xD8+var_30]
BL              sub_12CA08
LDR             R1, [R4,#0x10]
MOVS            R0, R1
BEQ             loc_29F88C
LDR             R1, [R4,#0xB0]
MOV             R2, #7
ADD             R11, R2, R5,LSL#2
LDRB            R1, [R1,R11]
CMP             R1, #0xFF
BEQ             loc_29F88C
ADD             R2, SP, #0xD8+var_78
MOV             R1, #0
STR             R7, [SP,#0xD8+var_78]
BL              sub_12C9C4
LDR             R3, [R4,#0x10]
MOV             R1, #0
MOV             R2, #0x3F800000
ADD             R0, R3, #0x20 ; ' '
ADD             R12, R0, #0x10
STR             R1, [R0,#4]
STR             R2, [R0]
STR             R1, [R0,#8]
VSTR            S26, [R0,#0xC]
STM             R12, {R1,R2}
MOV             R3, R0
STR             R1, [R0,#0x18]
VSTR            S20, [R0,#0x1C]
STR             R1, [R0,#0x20]!
ADD             R0, R0, #4
STM             R0, {R1,R2}
MOV             R2, #0
VSTR            S27, [R3,#0x2C]
LDR             R1, [R4,#0x10]
MOV             R3, #0x100
STRB            R10, [R1,#0x71]
LDR             R1, [R4,#0xB0]
LDR             R0, [R4,#0x10]
LDRB            R1, [R1,R11]
BL              sub_11DCDC
LDR             R0, [R4,#0x10]
LDR             R1, [SP,#0xD8+var_30]
BL              sub_12CA08
LDR             R3, [R4,#0xC]
CMP             R3, #0
BEQ             loc_29F970
ADD             R2, SP, #0xD8+var_D0
MOV             R1, #0
MOV             R0, R3
STR             R7, [SP,#0xD8+var_D0]
BL              sub_12C9C4
LDR             R0, [R4,#0xC]
MOV             R2, #0x3F800000
MOV             R1, #0
STR             R2, [R0,#0x20]!
ADD             R11, R0, #0x10
STR             R1, [R0,#4]
STR             R1, [R0,#8]
VSTR            S22, [R0,#0xC]
STM             R11, {R1,R2}
ADD             R11, R0, #0x24 ; '$'
STR             R1, [R0,#0x18]
VSTR            S18, [R0,#0x1C]
STR             R1, [R0,#0x20]
STM             R11, {R1,R2}
VSTR            S21, [R0,#0x2C]
LDR             R1, [R4,#0xC]
STRB            R10, [R1,#0x71]
LDR             R2, [R4,#0xB0]
MOV             R1, #6
ADD             R1, R1, R5,LSL#2
LDRB            R5, [R2,R1]
ORRS            R1, R5, #1
LDRNE           R7, =0xCCCCCCCD
BEQ             loc_29F970
LDRB            R1, [R4,#0x18]
UMULL           R2, R0, R7, R5
MOV             R3, #0x100
MOV             R0, R0,LSR#3
RSB             R0, R0, #0
ADD             R0, R0, R0,LSL#2
ADD             R2, R5, R0,LSL#1
ADD             R1, R1, R2
LDR             R0, [R4,#0xC]
AND             R1, R1, #0xFF
MOV             R2, #0
BL              sub_11DCDC
LDR             R0, [R4,#0xC]
LDR             R1, [SP,#0xD8+var_30]
BL              sub_12CA08
LDR             R1, [R4,#0xC]
VLDR            S0, [R4,#0x38]
ADD             R1, R1, #0x2C ; ','
VLDR            S1, [R1]
VSUB.F32        S0, S1, S0
VSTR            S0, [R1]
MOV             R1, #0xCD
SMULBB          R1, R5, R1
MOVS            R5, R1,LSR#11
BNE             loc_29F90C
VSUB.F32        S16, S16, S17
VSUB.F32        S19, S19, S17
VSUB.F32        S20, S20, S17
VSUB.F32        S18, S18, S17
ADD             R6, R6, #1
CMP             R6, R8
BNE             loc_29F65C
ADD             SP, SP, #0x6C ; 'l'
VPOP            {D8-D14}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
