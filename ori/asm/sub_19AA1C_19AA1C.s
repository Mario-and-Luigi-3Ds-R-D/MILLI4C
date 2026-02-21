PUSH            {R4-R10,LR}
MOV             R6, R0
VPUSH           {D8}
LDR             R0, [R0,#0x1B4]
TST             R0, #0xC00
BEQ             loc_19AB68
MOV             R1, R0,LSL#20
MOV             R2, #1
CMP             R2, R1,LSR#30
BNE             loc_19AA6C
VLDR            S0, [R6,#0xD8]
VLDR            S1, =0.5
LDR             R1, =0x41A00000
VADD.F32        S0, S0, S1
VMOV            R0, S0
VSTR            S0, [R6,#0xD8]
CMP             R0, R1
VLDRGT          S0, =20.0
VSTR            S0, [R6,#0xD8]
B               loc_19AAA4
MOV             R2, #2
CMP             R2, R1,LSR#30
BNE             loc_19AAA4
VLDR            S0, [R6,#0xD8]
VLDR            S1, =0.2
VSUB.F32        S0, S0, S1
VMOV            R1, S0
VSTR            S0, [R6,#0xD8]
CMP             R1, #0x3F800000
BGT             loc_19AAA4
BIC             R0, R0, #0xC00
VLDR            S0, =1.0
VSTR            S0, [R6,#0xD8]
STR             R0, [R6,#0x1B4]
LDRH            R0, [R6,#0xDC]
CMP             R0, #0
BEQ             loc_19AB68
LDR             R1, [R6,#0x1B4]
TST             R1, #0x200
BEQ             loc_19AB68
VLDR            S0, [R6,#0xD8]
VLDR            S1, =256.0
CMP             R0, #0
MOV             R5, #0
VMUL.F32        S0, S0, S1
BLE             loc_19AB68
MOV             R9, #0xB0
MOV             R7, #0xF0
MOV             R8, #0x130
VCVT.S32.F32    S16, S0
LDR             R0, [R6,#0xD4]
LDR             R0, [R0,R5,LSL#2]
CMP             R0, #0
MOVNE           R4, #0
BEQ             loc_19AB58
LDR             R1, [R6,#0xD4]
VMOV            R0, S16
ADD             R2, R9, R4,LSL#4
LDR             R3, [R1,R5,LSL#2]
SXTH            R1, R0
ADD             R0, R3, R2
BL              sub_123CE8
VMOV            R0, S16
LDR             R2, [R6,#0xD4]
ADD             R3, R7, R4,LSL#4
SXTH            R1, R0
LDR             R0, [R2,R5,LSL#2]
ADD             R0, R0, R3
BL              sub_123CE8
LDR             R1, [R6,#0xD4]
VMOV            R0, S16
ADD             R2, R8, R4,LSL#4
LDR             R3, [R1,R5,LSL#2]
SXTH            R1, R0
ADD             R0, R3, R2
BL              sub_123CE8
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_19AAF8
LDRH            R0, [R6,#0xDC]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_19AAE4
VPOP            {D8}
POP             {R4-R10,PC}
