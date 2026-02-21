PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R6, R1
VPUSH           {D8}
MOV             R5, R2
LDRB            R0, [R0,#0xB4]
VLDR            S17, =0.024544
VLDR            S16, =0.0
CMP             R0, #1
BEQ             loc_1E5AD8
CMP             R0, #0
LDM             R6, {R0-R2}
ADD             R3, R4, #4
STM             R3, {R0-R2}
BEQ             loc_1E5B88
LDM             R5, {R0-R2}
ADD             R4, R4, #0x1C
STM             R4, {R0-R2}
VPOP            {D8}
POP             {R4-R6,PC}
LDM             R5, {R0-R2}
ADD             R3, R4, #0x1C
STM             R3, {R0-R2}
ADD             R0, R6, #4
VLDR            S0, [R5]
VLDR            S5, [R6]
VLDR            S1, [R5,#4]
VLDR            S4, [R6,#4]
VSUB.F32        S0, S0, S5
VLDR            S2, [R5,#8]
VSUB.F32        S1, S1, S4
VLDR            S3, [R6,#8]
VSUB.F32        S2, S2, S3
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VSQRT.F32       S1, S0
VMOV            S0, R1
VSTR            S1, [R4,#0x8C]
VMOV            S1, R2
VLDM            R0, {S2-S3}
VSUB.F32        S0, S0, S2
VSUB.F32        S1, S1, S3
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VSTREQ          S16, [R4,#0x40]
BEQ             loc_1E5B54
VNEG.F32        S1, S1
BL              sub_4645C0
VMUL.F32        S0, S0, S17
VSTR            S0, [R4,#0x40]
VLDR            S1, [R4,#0x1C]
VLDR            S3, [R6]
VLDR            S0, [R4,#0x24]
VLDR            S2, [R6,#8]
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S0, S2
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1E5C0C
B               loc_1E5C14
VSTR            S16, [R4,#0x48]
VPOP            {D8}
POP             {R4-R6,PC}
VMOV            S3, R0
VLDM            R5, {S0-S2}
VMOV            S4, R1
ADD             R0, R5, #4
VSUB.F32        S0, S0, S3
VMOV            S3, R2
VSUB.F32        S1, S1, S4
VSUB.F32        S2, S2, S3
VMUL.F32        S0, S0, S0
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VSQRT.F32       S1, S0
VSTR            S1, [R4,#0x8C]
VLDM            R0, {S0-S1}
VSUB.F32        S0, S0, S4
VSUB.F32        S1, S1, S3
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VSTREQ          S16, [R4,#0x40]
BEQ             loc_1E5BE8
VNEG.F32        S1, S1
BL              sub_4645C0
VMUL.F32        S0, S0, S17
VSTR            S0, [R4,#0x40]
VLDR            S1, [R5]
VLDR            S3, [R4,#4]
VLDR            S0, [R5,#8]
VLDR            S2, [R4,#0xC]
VSUB.F32        S1, S1, S3
VSUB.F32        S0, S0, S2
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_1E5C14
VSTR            S16, [R4,#0x44]
B               loc_1E5B7C
NOP
BL              sub_4645C0
VMUL.F32        S0, S0, S17
VSTR            S0, [R4,#0x44]
B               loc_1E5B7C
