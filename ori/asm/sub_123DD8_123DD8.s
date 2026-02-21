VMOV            S0, R3
VLDR            S1, =2.0
PUSH            {R4-R8,LR}
SUBS            R6, R2, #0
MOV             R5, R0
LDR             R4, [R0,#0xC]
VCVT.F32.S32    S0, S0
MOV             R7, R1
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R8, S0
BLT             loc_123E5C
MOV             R0, R4
BL              sub_12CD2C
CMP             R0, #0
NOP
BEQ             loc_123E40
MOV             R1, R6
MOV             R0, R4
BL              sub_1348CC
CMP             R0, #0
NOP
BEQ             loc_123E40
MOV             R1, R8
MOV             R0, R4
BL              sub_13551C
LDRD            R0, R1, [R5,#8]
ADD             R4, R4, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R4
BNE             loc_123E08
POP             {R4-R8,PC}
CMN             R7, #1
BNE             loc_123EA4
MOV             R0, R4
BL              sub_12CD2C
CMP             R0, #0
NOP
BEQ             loc_123E84
MOV             R1, R8
MOV             R0, R4
BL              sub_13551C
LDR             R1, [R5,#8]
LDR             R0, [R5,#0xC]
ADD             R4, R4, #0x480
ADD             R1, R1, R1,LSL#3
ADD             R0, R0, R1,LSL#7
CMP             R0, R4
BNE             loc_123E64
POP             {R4-R8,PC}
MOV             R1, R7
MOV             R0, R4
BL              sub_12B880
CMP             R0, #0
NOP
BEQ             loc_123EC8
MOV             R1, R8
MOV             R0, R4
BL              sub_13551C
LDRD            R0, R1, [R5,#8]
ADD             R4, R4, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R4
BNE             loc_123EA4
POP             {R4-R8,PC}
