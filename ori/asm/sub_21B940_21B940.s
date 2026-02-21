PUSH            {R4-R6,LR}
MOV             R4, R0
SUB             SP, SP, #0x10
MOV             R0, #1
STRB            R0, [R4,#4]
LDR             R0, =off_6B2C5C
MOV             R6, #0
STR             R0, [R4]
STR             R1, [R4,#8]
STRB            R6, [R4,#0xC]
LDR             R5, [R1,#0x18]
MOV             R0, R1
CMP             R5, #0
MOVEQ           R0, R4
BEQ             loc_21BA74
BL              sub_4E3B4C
LDR             R0, [R4,#8]
LDR             R1, [R5,#0x3B4]
LDR             R0, [R0,#0x1BC]
CMP             R1, R0
BNE             loc_21B9A4
MOV             R0, R5
BL              sub_5C55B8
CMP             R0, #0
BEQ             loc_21B9BC
MOV             R2, #0
STR             R6, [SP,#0x20+var_20]
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_4E3CA0
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xCF00
LDRB            R0, [R0,#(byte_19CF28 - 0x19CF00)]
CMP             R0, #0
BNE             loc_21BA68
LDR             R0, [R4,#8]
LDR             R1, [R0,#0x2A8]
CMP             R1, #0
BEQ             loc_21BA68
VLDR            S2, [R0,#0x1C]
VLDR            S5, [R5,#0x24]
ADD             R0, R0, #0x20 ; ' '
ADD             R1, R5, #0x28 ; '('
VSUB.F32        S2, S2, S5
VLDM            R0, {S0-S1}
VLDM            R1, {S3-S4}
ADD             R1, SP, #0x20+var_1C
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S4
VSTR            S2, [SP,#0x20+var_20]
VMUL.F32        S2, S2, S2
VSTM            R1, {S0-S1}
VMLA.F32        S2, S0, S0
VMLA.F32        S2, S1, S1
VLDR            S1, =0.0
VSQRT.F32       S0, S2
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_21BA68
ADD             R0, R5, #0x1DC
BL              sub_5A26D0
VLDR            S0, =2.0
MOV             R2, SP
MOV             R1, #0
ADD             R0, R5, #0x1DC
BL              sub_5A25D0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x2E ; '.'
MOV             R0, R5
BL              sub_14C548
MOV             R0, #1
STRB            R0, [R4,#0xC]
MOV             R0, R4
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
