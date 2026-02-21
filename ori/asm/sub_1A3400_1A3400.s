PUSH            {R4-R8,LR}
MOV             R5, R0
SUB             SP, SP, #0x18
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
LDR             R7, =off_6CE970
ADD             R2, R5, #0xC
MOV             R6, #0
MOV             R8, #1
LDR             R1, [R7]
ADD             R12, R1, #0x10C000
ADD             R12, R12, #0x238
LDM             R12, {R3,R4,R12}
STM             R2, {R3,R4,R12}
ADD             R2, R0, #0x3B0
ADD             R0, R0, #0x4A0
ADD             R3, R1, #0x10C000
STR             R0, [R5,#8]
ADD             R3, R3, #0x330
STR             R2, [R5,#0x24]
STR             R3, [R5,#0x18]
STR             R6, [R5,#0x20]
VLDR            S0, [R0,#0x10]
ADD             R4, R5, #8
VCVT.U32.F32    S0, S0
VMOV            R1, S0
CMP             R1, R6
MOVLS           R0, R6
BLS             loc_1A350C
ADD             R0, R0, #0x14
MOV             R2, SP
VLDM            R0, {S0-S3}
MOV             R1, #0
VSTMEA          SP, {S0-S3}
VLDR            S0, [R0,#0x10]
VCVT.U32.F32    S0, S0
VMOV            R0, S0
ANDS            R12, R0, #0xFF
STRB            R12, [SP,#0x30+var_20]
VLDR            S1, [R4,#4]
VLDR            S0, [SP,#0x30+var_30]
MOV             R0, R3
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x30+var_30]
VLDR            S1, [R4,#8]
VLDR            S0, [SP,#0x30+var_2C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x30+var_2C]
VLDR            S1, [R4,#0xC]
VADD.F32        S0, S2, S1
VSTR            S0, [SP,#0x30+var_28]
BEQ             loc_1A34EC
CMP             R12, #1
BEQ             loc_1A3500
CMP             R12, #2
VMOVEQ.F32      S0, S3
BLEQ            sub_5A2298
B               loc_1A3508
VMOV.F32        S0, S3
BL              sub_5A2708
NOP
NOP
B               loc_1A3508
VMOV.F32        S0, S3
BL              sub_5A2074
MOV             R0, R8
STRB            R0, [R4,#0x14]
LDR             R0, [R7]
ADD             R4, R5, #0x24 ; '$'
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x3D8
STR             R0, [R5,#0x28]
STR             R6, [R5,#0x30]
LDR             R1, [R5,#0x24]
VLDR            S0, [R1,#0x10]
VCVT.U32.F32    S0, S0
VMOV            R2, S0
CMP             R2, R6
BLS             loc_1A35B4
ADD             R1, R1, #0x14
LDR             R5, [R1,#0xC]
LDM             R1, {R2,R3,R12}
STR             R5, [SP,#0x30+var_24]
STMEA           SP, {R2,R3,R12}
MOV             R2, SP
VLDR            S0, [R1,#0x10]
VCVT.U32.F32    S0, S0
VMOV            R1, S0
ANDS            R3, R1, #0xFF
STRB            R1, [SP,#0x30+var_20]
MOV             R1, #0
BEQ             loc_1A3594
CMP             R3, #1
BEQ             loc_1A35A8
CMP             R3, #2
VMOVEQ          S0, R5
BLEQ            sub_5A2298
NOP
NOP
B               loc_1A35B0
VMOV            S0, R5
BL              sub_5A2708
NOP
NOP
B               loc_1A35B0
VMOV            S0, R5
BL              sub_5A2074
MOV             R6, R8
STRB            R6, [R4,#8]
ADD             SP, SP, #0x18
POP             {R4-R8,PC}
