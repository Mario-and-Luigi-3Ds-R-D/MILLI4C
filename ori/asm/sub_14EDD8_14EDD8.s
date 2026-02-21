PUSH            {R4-R7,LR}
MOV             R5, R0
VPUSH           {D8}
VMOV.F32        S16, S0
LDRSH           R6, [R0,#0x14]
SUB             SP, SP, #4
VMOV            S0, R6
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R1, R0
ADD             R0, R5, #0x10
BL              sub_123CE8
LDR             R0, [R5,#0xC]
MOV             R7, SP
CMP             R0, #0
MOVNE           R4, #0
BEQ             loc_14EE6C
ADD             R0, R4, R4,LSL#1
ADD             R3, R7, R4,LSL#1
ADD             R1, R5, R0,LSL#3
ADD             R0, R1, #0xD8
MOV             R2, R0
LDRSH           R0, [R1,#0xDC]
VMOV            S0, R0
STRH            R0, [R3]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R1, R0
MOV             R0, R2
BL              sub_123CE8
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_14EE24
MOV             R0, R5
BL              sub_592F14
MOV             R1, R6
ADD             R0, R5, #0x10
BL              sub_123CE8
LDR             R0, [R5,#0xC]
CMP             R0, #0
MOVNE           R4, #0
BEQ             loc_14EEB4
ADD             R0, R4, R4,LSL#1
ADD             R1, R7, R4,LSL#1
ADD             R0, R5, R0,LSL#3
LDRSH           R1, [R1]
ADD             R0, R0, #0xD8
BL              sub_123CE8
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_14EE90
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4-R7,PC}
