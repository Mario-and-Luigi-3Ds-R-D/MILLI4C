PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6CDA80
LDR             R1, =0x126F4
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, [R6]
LDR             R5, [R1,R0]
BL              sub_5C976C
VMOV.F32        S16, S0
ADD             R0, R4, #0x400
ADD             R0, R0, #0x6C ; 'l'
BL              sub_5A18EC
ADD             R0, R4, #0x400
MOV             R2, #0
VSTR            S16, [R0,#0x78]
VSTR            S16, [R0,#0x70]
LDR             R0, [R6]
LDR             R1, [R0,#0x3C]
MOV             R0, R4
BL              sub_14E6E0
MOV             R1, #1
MOV             R0, R4
BL              sub_14C450
MOV             R0, #1
STRB            R0, [R4,#0xF1]
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
MOV             R0, #0
STRB            R0, [R4,#0xF6]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52FB70
MOV             R0, R4
BL              sub_22B780
LDR             R0, [R6]
VLDR            S5, [R4,#0x24]
VLDR            S4, [R4,#0x28]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
VLDR            S1, [R4,#0x2C]
LDR             R0, [R0]
ADD             R1, R0, #0x38C
VLDR            S0, [R0,#0x388]
VLDM            R1, {S2-S3}
VADD.F32        S0, S0, S5
ADD             R1, R4, #0x1000
VADD.F32        S2, S2, S4
VADD.F32        S1, S3, S1
VSTR            S0, [R1,#0xBC]
VSTR            S2, [R1,#0xC0]
VSTR            S1, [R1,#0xC4]
VLDR            S1, [R0,#0x394]
VLDR            S0, [R0,#0x398]
VLDR            S2, [R0,#0x39C]
ADD             R0, R4, #0x28 ; '('
VLDR            S5, [R4,#0x24]
VLDM            R0, {S3-S4}
VADD.F32        S1, S1, S5
VADD.F32        S0, S0, S3
VADD.F32        S2, S2, S4
VSTR            S1, [R1,#0xC8]
VSTR            S0, [R1,#0xCC]
VSTR            S2, [R1,#0xD0]
LDR             R1, [R5,#0x24]!
ADD             R5, R5, #0x2DC
LDM             R5, {R0,R2}
STMEA           SP, {R0-R2}
MOV             R1, SP
MOV             R0, R4
BL              sub_14E984
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
