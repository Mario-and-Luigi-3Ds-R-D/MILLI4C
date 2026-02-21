PUSH            {R4-R6,LR}
BL              sub_14F198
ADD             R0, R0, #0x400
ADD             R0, R0, #0x24 ; '$'
BL              sub_5A1E2C
LDR             R4, =off_6B7BEC
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
MOV             R5, #1
STR             R1, [R0,#0x10]
STRB            R5, [R0,#0x14]
ADD             R0, R0, #0x34 ; '4'
BL              sub_5A1E2C
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
STRB            R5, [R0,#0x14]
SUB             R5, R0, #0x400
ADD             R4, R0, #0x38 ; '8'
LDR             R0, =dword_6D1F40
SUB             R5, R5, #0x58 ; 'X'
BL              sub_546DB0
STRH            R0, [R4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
LDR             R0, =off_6CE118
VLDR            S1, =0.000015259
LDR             R0, [R0]
VCVT.F32.U32    S0, S0
LDR             R0, [R0,#8]
VLDR            S2, [R0,#0x18]
VMUL.F32        S1, S0, S1
VLDR            S0, [R0,#0x14]
VSUB.F32        S2, S2, S0
VMLA.F32        S0, S2, S1
VCVT.U32.F32    S0, S0
VMOV            R0, S0
UXTH            R1, R0
LDR             R0, =0xFFFF
BL              sub_127F6C
STRH            R0, [R4,#2]
ADD             R0, R5, #0x400
ADD             R0, R0, #0x98
BL              sub_14F198
SUB             R0, R0, #0x400
SUB             R0, R0, #0x98
MOV             R1, #0
STRB            R1, [R0,#0x410]
STR             R1, [R0,#0x400]
POP             {R4-R6,PC}
