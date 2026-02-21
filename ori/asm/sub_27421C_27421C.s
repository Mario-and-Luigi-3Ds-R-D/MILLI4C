PUSH            {R4-R8,LR}
MOV             R5, R1
ADD             R0, R0, #4
BL              sub_14F198
SUB             R4, R0, #4
LDR             R1, =off_6B2A84
ADD             R0, R0, #0x400
LDR             R7, =off_6CDF98
ADD             R0, R0, #0xC
MOV             R6, #0
STM             R0, {R1,R6}
MOV             R2, R6
LDR             R0, [R7]
LDR             R1, [R0,#0x140]
ADD             R0, R4, #4
BL              sub_14E6E0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #4
BL              sub_14C548
MOV             R0, #1
MOV             R1, R0
STRB            R0, [R4,#0xF5]
ADD             R0, R4, #4
BL              sub_14C450
MOV             R1, #0
ADD             R0, R4, #4
BL              sub_14C3E8
MOV             R1, R5
ADD             R0, R4, #4
BL              sub_14E984
STRB            R6, [R4,#0x418]
STRB            R6, [R4]
LDR             R1, [R7]
VLDR            S5, [R5]
VLDR            S4, [R5,#4]
VLDR            S1, [R5,#8]
LDR             R0, [R1,#0x124]
ADD             R0, R0, #0x540
VLDM            R0!, {S0}
VLDM            R0, {S2-S3}
ADD             R0, R4, #0x3F8
VADD.F32        S0, S0, S5
VADD.F32        S2, S2, S4
VADD.F32        S1, S3, S1
VSTR            S0, [R4,#0x3F8]
VSTR            S2, [R4,#0x3FC]
VSTR            S1, [R0,#8]
LDR             R0, [R1,#0x124]
VLDR            S0, [R5]
VLDR            S2, [R5,#4]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x14C
VLDR            S1, [R5,#8]
VLDM            R0, {S3-S5}
ADD             R0, R4, #0x400
VADD.F32        S0, S3, S0
VADD.F32        S2, S4, S2
VADD.F32        S1, S5, S1
VSTR            S0, [R0,#4]
VSTR            S2, [R0,#8]
VSTR            S1, [R0,#0xC]
MOV             R0, R4
POP             {R4-R8,PC}
