PUSH            {R4-R7,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0,#8]
LDR             R5, [R0,#0x18]
MOV             R0, R5
BL              sub_5C5820
CMP             R0, #0
BNE             loc_1519C4
LDR             R0, [R4,#0x2C]
VLDR            S1, =0.0
LDR             R1, [R0]
LDR             R12, [R0,#4]
LDR             R3, [R0,#8]
LDR             R2, [R0,#0xC]
ADD             R0, R12, R1
ADD             R0, R0, R3
ADD             R0, R0, R2
VMOV            S0, R0
VSTR            S1, [R5,#0x39C]
MOV             R3, #0x100
VCVT.F32.S32    S0, S0
VSTR            S0, [R5,#0x3A0]
LDR             R1, [R4,#0x2C]
LDR             R0, [R1]
LDR             R2, [R1,#4]
LDR             R1, [R1,#8]
ADD             R0, R0, R2
ADD             R6, R1, R0
MOV             R2, #1
MOV             R1, #5
MOV             R0, R5
BL              sub_14C548
MOV             R2, #0xFFFFFFFF
MOV             R1, R2
MOV             R0, R5
BL              sub_5C55C8
VMOV            S1, R0
VMOV            S0, R6
MOV             R0, R5
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VDIV.F32        S16, S1, S0
VMOV.F32        S0, S16
BL              sub_14D5EC
LDR             R7, =off_6CE970
LDR             R6, [R7]
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_151994
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R6]; byte_19CF30
CMP             R0, #0
BNE             loc_151994
LDR             R6, [R7]
BL              sub_4635D8
MOV             R2, #0
MOV             R1, #7
STMEA           SP, {R1,R2}
MOV             R3, R0
MOV             R2, R5
MOV             R1, #0x76 ; 'v'
MOV             R0, R6
BL              sub_52AE1C
VLDR            S0, =256.0
MOV             R6, R0
VMUL.F32        S0, S16, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R1, R0
ADD             R0, R6, #4
BL              sub_123CE8
LDR             R0, [R4,#0x24]
ADD             R5, R4, #0x24 ; '$'
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R6, #0
STR             R6, [R5,#4]
STRNE           R5, [R6,#0x184]
LDR             R0, [R4,#8]
LDR             R12, [R7]
LDR             R2, =0x30092
MOV             R3, #0
LDRH            R1, [R0,#0x10]
LDR             R0, =0xFFE683CC
SUB             R0, R12, R0
BL              sub_503808
LDR             R1, =unk_63FC24
STR             R0, [R4,#0x34]
LDRD            R0, R1, [R1,#(off_63FCA0 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
