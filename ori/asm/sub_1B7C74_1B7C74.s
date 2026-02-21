PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R4, #0
LDR             R6, =byte_68DBBC
VPUSH           {D8}
LDRB            R0, [R6]
CMP             R0, #0
BLE             loc_1B7CDC
LDR             R7, =0x19C98
VLDR            S1, =256.0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S16, S0
RSB             R1, R4, R4,LSL#4
LDR             R0, [R5,#4]
ADD             R1, R1, R4,LSL#5
ADD             R1, R7, R1,LSL#2
ADD             R0, R0, R1
LDR             R0, [R0,#0xA4]
VMOV            R1, S16
ADD             R0, R0, #0x10
SXTH            R1, R1
BL              sub_123CE8
LDRB            R0, [R6]
ADD             R4, R4, #1
CMP             R4, R0
BLT             loc_1B7CA4
VPOP            {D8}
POP             {R4-R8,PC}
