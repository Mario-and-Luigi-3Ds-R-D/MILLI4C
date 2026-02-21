PUSH            {R4-R8,LR}
MOV             R6, R0
ADD             R0, R0, #0x13000
ADD             R0, R0, #0xD60
MOV             R4, R1
LDR             R5, [R0]
MOV             R1, #0
STR             R1, [R0]
MOV             R0, #0x34 ; '4'
MOV             R7, R2
MUL             R0, R2, R0
MOV             R2, R1
ADD             R1, R6, #0x13C00
ADD             R1, R1, #0x5C ; '\'
BL              sub_1143B4
CMP             R0, #0
BEQ             loc_2B0680
LDR             R1, =nullsub_868
MOV             R3, R7
MOV             R2, #0x34 ; '4'
BLX             sub_1002F4
ADD             R6, R6, #0x13C00
ADD             R6, R6, #0x15C
MOV             R2, #0x7E00
MOV             R3, #0xC
MOV             R12, #2
STR             R0, [R6]
LDRSH           R1, [R4,#4]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#4]
LDRSH           R1, [R4,#6]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x10]
LDRSH           R1, [R4,#8]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x14]
LDRSH           R1, [R4,#0xA]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#8]
LDRSH           R1, [R4,#0xC]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0xC]
LDRSH           R1, [R4,#0xE]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x18]
LDRSH           R1, [R4,#0x10]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x1C]
LDRSH           R1, [R4,#0x12]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x28]
LDRSH           R1, [R4,#0x14]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x2C]
LDRSH           R1, [R4,#0x16]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x20]
LDRSH           R1, [R4,#0x18]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x24]
LDRSH           R1, [R4,#0x1A]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VSTR            S0, [R0,#0x30]
LDRH            R1, [R4,#2]
STRH            R1, [R0,#2]
LDRH            R6, [R4]
LDRH            R1, [R0]
AND             R6, R2, R6,LSL#4
BIC             R1, R1, #0x7E00
ORR             R1, R1, R6
STRH            R1, [R0]
LDRH            R6, [R4]
BIC             R1, R1, #0x1E0
AND             R6, R3, R6,LSL#1
ORR             R1, R1, R6,LSL#5
STRH            R1, [R0]
LDRH            R6, [R4]
BIC             R1, R1, #0x10
AND             R6, R6, #0x10
ORR             R1, R1, R6
STRH            R1, [R0]
LDRH            R6, [R4]
BIC             R1, R1, #8
AND             R6, R6, #8
ORR             R1, R1, R6
MVN             R6, R5
BIC             R1, R1, #6
AND             R6, R12, R6,LSL#1
ORR             R1, R1, R6
STRH            R1, [R0]
LDRH            R6, [R4]
BIC             R1, R1, #1
AND             R6, R6, #1
ORR             R1, R1, R6
TST             R1, #1
STRH            R1, [R0]
BNE             locret_2B07F0
ADD             R4, R4, #0x1C
ADD             R0, R0, #0x34 ; '4'
MOV             R5, R5,LSR#1
B               loc_2B0698
POP             {R4-R8,PC}
