PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6CE098
VPUSH           {D8}
SUB             SP, SP, #0x18
LDRB            R1, [R0]
LDR             R0, [R6]
CMP             R1, #0
BEQ             loc_2565D8
CMP             R1, #1
BNE             loc_2565CC
LDR             R1, [R0,#0x68]
VLDR            S2, [R4,#0x30]
LDR             R0, [R0,#0x8C]
LDR             R1, [R1,#0xA74]
VLDR            S1, [R0,#0x378]
VLDR            S0, [R1,#0x2C]
VSUB.F32        S0, S0, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_2565CC
MOV             R0, #1
STRB            R0, [R4,#0xF6]
MOV             R0, #0xFFFFFF00
ADD             R5, R4, #0x330
REV             R0, R0
STR             R0, [SP,#0x30+var_30]
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, [SP,#0x30+var_30]
MOV             R1, SP
STR             R0, [R5,#4]
STR             R0, [R5]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x30+var_30]
LDR             R0, [R6]
LDR             R0, [R0,#0x8C]
VLDR            S0, [R0,#0x380]
ADD             R0, R4, #0x330
BL              sub_4E665C
MOV             R0, #0
STRB            R0, [R4]
ADD             SP, SP, #0x18
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R2, [R0,#0x68]!
ADD             R0, R0, #4
STR             R0, [SP,#0x30+var_2C]
STR             R2, [SP,#0x30+var_30]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x30+var_2C
VLDR            S1, =0.0
STR             R2, [SP,#0x30+var_28]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x30+var_30]
VLDR            S4, [R4,#0x28]
ADD             R1, R4, #0x2C ; ','
LDR             R0, [R0,#0xA74]
VLDM            R1, {S2-S3}
VLDR            S0, [R0,#0x24]
VLDR            S16, [R0,#0x2C]
VSUB.F32        S2, S1, S2
VSUB.F32        S0, S0, S4
VSUB.F32        S1, S16, S3
LDR             R0, [SP,#0x30+var_30]
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VLDR            S1, [R0,#0x7C]
LDR             R0, [R4,#0x3F8]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_256670
ADD             R0, R0, #0xB
AND             R1, R0, #0xFF
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R4, #4
BL              sub_14C430
NOP
NOP
B               loc_256688
ADD             R0, R0, #5
AND             R1, R0, #0xFF
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R4, #4
BL              sub_14C430
LDRB            R0, [R4,#0x3FC]
CMP             R0, #0
BEQ             loc_2566C8
MOV             R2, #0
ADD             R1, SP, #0x30+var_24
ADD             R0, R4, #4
BL              sub_5C4F84
LDR             R0, [SP,#0x30+var_20]
LDR             R1, =0xC3340000
CMP             R0, R1
BLS             loc_2566C8
VLDR            S0, [R4,#0x30]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
MOVGT           R0, #2
STRBGT          R0, [R4]
LDR             R1, [SP,#0x30+var_28]
ADD             R0, SP, #0x30+var_2C
CMP             R1, R0
BNE             loc_2566F4
LDR             R0, [SP,#0x30+var_30]
CMP             R0, #0
BEQ             loc_2566F4
BL              sub_25AEE4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x30+var_2C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x18
VPOP            {D8}
POP             {R4-R6,PC}
