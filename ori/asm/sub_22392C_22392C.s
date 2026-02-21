PUSH            {R4-R8,LR}
MOV             R5, R1
LDR             R1, =off_6BB8EC
STR             R1, [R0],#4
BL              sub_14F198
LDR             R8, =off_6CDA80
MOV             R6, #0
SUB             R4, R0, #4
STRB            R6, [R0,#0x411]
LDR             R0, [R8]
MOV             R2, R6
LDR             R1, [R0,#0x48]
ADD             R0, R4, #4
BL              sub_14E6E0
MOV             R1, #1
ADD             R0, R4, #4
BL              sub_14C450
MOV             R0, #1
MOV             R2, #0
STRB            R0, [R4,#0xF5]
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #4
BL              sub_14C548
MOV             R1, R5
ADD             R0, R4, #4
BL              sub_14E984
MOV             R1, #0
ADD             R0, R4, #4
BL              sub_14C3E8
STRB            R6, [R4,#0x414]
LDR             R7, =dword_6D1F40
ADD             R0, R4, #4
STRB            R6, [R4,#0x3F8]
BL              sub_5C5724
MOV             R6, R0
MOV             R0, R7
BL              sub_546DB0
MUL             R0, R0, R6
MOV             R1, R0,LSR#16
ADD             R0, R4, #4
BL              sub_14F01C
LDR             R1, [R8]
VLDR            S4, [R5,#4]
VLDR            S5, [R5]
ADD             R1, R1, #0x12400
ADD             R1, R1, #0x2F4
VLDR            S2, [R5,#8]
LDR             R0, [R1]
ADD             R2, R4, #0x3FC
ADD             R0, R0, #0x3A0
VLDM            R0, {S0-S1}
VLDR            S3, [R0,#8]
ADD             R0, R4, #0x3FC
VADD.F32        S0, S0, S5
VADD.F32        S1, S1, S4
VADD.F32        S2, S3, S2
VSTM            R2, {S0-S1}
VSTR            S2, [R0,#8]
LDR             R0, [R1]
VLDR            S2, [R5]
VLDR            S1, [R5,#4]
ADD             R0, R0, #0x3AC
VLDR            S0, [R5,#8]
VLDM            R0, {S3-S5}
ADD             R0, R4, #0x400
VADD.F32        S2, S3, S2
VADD.F32        S1, S4, S1
VADD.F32        S0, S5, S0
VSTR            S2, [R0,#8]
VSTR            S1, [R0,#0xC]
VSTR            S0, [R0,#0x10]
MOV             R0, R4
POP             {R4-R8,PC}
