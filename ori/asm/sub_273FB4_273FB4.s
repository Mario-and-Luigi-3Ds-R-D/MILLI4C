PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CDF98
VLDR            S5, [R4,#0x28]
VLDR            S4, [R4,#0x2C]
VLDR            S1, [R4,#0x30]
LDR             R1, [R0]
ADD             R2, R4, #0x400
ADD             R2, R2, #4
LDR             R0, [R1,#0x124]
ADD             R0, R0, #0x540
VLDR            S2, [R0]
VLDR            S0, [R0,#4]
VLDR            S3, [R0,#8]
VADD.F32        S2, S2, S5
VADD.F32        S0, S0, S4
VADD.F32        S1, S3, S1
ADD             R0, R4, #0x3F8
VSTR            S2, [R4,#0x3F8]
VSTR            S0, [R4,#0x3FC]
VSTR            S1, [R0,#8]
LDR             R0, [R1,#0x124]
VLDR            S0, [R4,#0x30]
VLDR            S4, [R4,#0x2C]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x14C
VLDR            S5, [R4,#0x28]
VLDM            R0, {S1-S3}
ADD             R0, R4, #0x400
VADD.F32        S1, S1, S5
VADD.F32        S0, S3, S0
VADD.F32        S2, S2, S4
VSTR            S0, [R0,#0xC]
VSTM            R2, {S1-S2}
LDRB            R2, [R4]
CMP             R2, #1
BEQ             loc_274098
CMP             R2, #2
BEQ             loc_2740C8
CMP             R2, #3
BNE             locret_274094
ADD             R0, R4, #0x1E0
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_274094
ADD             R0, R4, #4
BL              sub_5C4A1C
CMP             R0, #0
BNE             locret_274094
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #4
BL              sub_14C548
MOV             R0, #0
STRB            R0, [R4]
POP             {R4,PC}
ADD             R2, R4, #0x3A0
VLDM            R2, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             locret_274094
LDRB            R0, [R0,#0x18]
CMP             R0, #0
MOVNE           R0, R1
BLNE            sub_2792F4
MOV             R0, #2
NOP
B               loc_2740F4
ADD             R0, R4, #4
BL              sub_5C4A1C
CMP             R0, #0
NOP
BNE             locret_274094
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
ADD             R0, R4, #4
BL              sub_14C430
MOV             R0, #4
STRB            R0, [R4]
POP             {R4,PC}
