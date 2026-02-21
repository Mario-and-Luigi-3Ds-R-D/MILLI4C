PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8-D10}
VMOV.F32        S16, S0
SUB             SP, SP, #0x10
LDR             R6, [R0,#0x10]
CMP             R6, #0
BEQ             loc_135D9C
MOV             R0, #0
STR             R0, [SP,#0x40+var_40]
STR             R0, [SP,#0x40+var_3C]
STR             R0, [SP,#0x40+var_38]
STR             R0, [SP,#0x40+var_34]
BL              sub_13E46C
CMP             R5, #0
MOV             R7, SP
BEQ             loc_135A14
ADD             R0, R7, R5,LSL#2
VLDR            S0, =1.0
VSTR            S0, [R0,#-4]
B               loc_135C80
LDR             R8, =0x43B40000
VLDR            S19, =3.1416
VLDR            S20, =0.0055556
VLDR            S18, =0.0
VLDR            S17, =360.0
CMP             R0, #1
BEQ             loc_135A4C
CMP             R0, #2
BEQ             loc_135AC0
VLDR            S0, =0.7854
BL              sub_140950
VSTR            S0, [SP,#0x40+var_40]
NOP
B               loc_135AB8
VCMPE.F32       S16, S18
VMRS            APSR_nzcv, FPSCR
BCS             loc_135A68
VADD.F32        S16, S16, S17
VCMPE.F32       S16, S18
VMRS            APSR_nzcv, FPSCR
BCC             loc_135A58
VMOV            R0, S16
CMP             R0, R8
BLT             loc_135A84
VSUB.F32        S16, S16, S17
VMOV            R0, S16
CMP             R0, R8
BGE             loc_135A74
LDR             R1, =0x43340000
VMOV            R0, S16
VLDR            S0, =0.5
CMP             R0, R1
VSUBGT.F32      S16, S17, S16
VMUL.F32        S0, S16, S0
VMUL.F32        S0, S0, S19
VMUL.F32        S16, S0, S20
VMOV.F32        S0, S16
BL              sub_1407D4
VSTR            S0, [SP,#0x40+var_40]
VMOV.F32        S0, S16
BL              sub_140950
VSTR            S0, [SP,#0x40+var_3C]
B               loc_135C80
NOP
BL              sub_13F2B8
VLDR            S1, =90.0
CMP             R0, #0
MOV             R5, #0
BEQ             loc_135B38
VLDR            S0, =30.0
VSUB.F32        S0, S16, S0
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BCS             loc_135AFC
VADD.F32        S0, S0, S17
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BCC             loc_135AEC
VMOV            R0, S0
CMP             R0, R8
BLT             loc_135B18
VSUB.F32        S0, S0, S17
VMOV            R0, S0
CMP             R0, R8
BGE             loc_135B08
LDR             R1, =0x42F00000
VMOV            R0, S0
CMP             R0, R1
BGE             loc_135BA0
VMUL.F32        S0, S0, S1
VLDR            S2, =0.0083333
VMUL.F32        S0, S0, S2
B               loc_135C0C
VLDR            S0, =45.0
VSUB.F32        S0, S16, S0
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BCS             loc_135B5C
VADD.F32        S0, S0, S17
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BCC             loc_135B4C
VMOV            R0, S0
CMP             R0, R8
BLT             loc_135B78
VSUB.F32        S0, S0, S17
VMOV            R0, S0
CMP             R0, R8
BGE             loc_135B68
LDR             R0, =0x42B40000
VMOV            R1, S0
CMP             R1, R0
BLE             loc_135C0C
VSUB.F32        S0, S0, S1
ADD             R5, R5, #1
VMOV            R1, S0
CMP             R1, R0
BGT             loc_135B88
B               loc_135C0C
LDR             R1, =0x432A0000
VMOV            R0, S0
VLDR            S2, =0.02
CMP             R0, R1
BGE             loc_135BCC
MOV             R5, #1
VLDR            S3, =120.0
VSUB.F32        S0, S0, S3
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S2
B               loc_135C0C
LDR             R1, =0x439B0000
VMOV            R0, S0
CMP             R0, R1
BGE             loc_135BF8
MOV             R5, #2
VLDR            S3, =170.0
VLDR            S2, =0.0071429
VSUB.F32        S0, S0, S3
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S2
B               loc_135C0C
VLDR            S3, =310.0
MOV             R5, #3
VSUB.F32        S0, S0, S3
VMUL.F32        S0, S0, S1
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S19
VMUL.F32        S16, S0, S20
VMOV.F32        S0, S16
BL              sub_1407D4
AND             R0, R5, #3
ADD             R0, R7, R0,LSL#2
VSTR            S0, [R0]
VMOV.F32        S0, S16
BL              sub_140950
ADD             R0, R5, #1
AND             R0, R0, #3
ADD             R0, R7, R0,LSL#2
VSTR            S0, [R0]
VLDR            S0, [SP,#0x40+var_34]
VLDR            S1, [SP,#0x40+var_38]
ADD             R0, SP, #0x40+var_38
VSTM            R0, {S0-S1}
VLDR            S2, [SP,#0x40+var_40]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S2
VSTR            S0, [SP,#0x40+var_40]
VLDR            S0, [SP,#0x40+var_3C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S1, S0
VSTR            S1, [SP,#0x40+var_3C]
VSTR            S18, [SP,#0x40+var_34]
VSTR            S18, [SP,#0x40+var_38]
MOV             R0, R6
BL              sub_1406D4
MOV             R5, R0
MOV             R2, #0x30 ; '0'
MOV             R1, #0
ADD             R0, R4, #0x304
BL              sub_12B588
TST             R5, #0x80
NOP
BEQ             loc_135CF4
MOV             R2, #0x10
MOV             R1, SP
ADD             R0, R4, #0x304
BL              sub_13F240
MOV             R0, R6
NOP
BL              sub_13F2D8
VLDR            S1, [R4,#0x304]
VLDR            S4, [R4,#0x308]
VLDR            S3, [R4,#0x30C]
VLDR            S2, [R4,#0x310]
VMUL.F32        S1, S1, S0
VMUL.F32        S4, S4, S0
VMUL.F32        S3, S3, S0
VMUL.F32        S0, S2, S0
VSTR            S1, [R4,#0x304]
VSTR            S4, [R4,#0x308]
VSTR            S3, [R4,#0x30C]
VSTR            S0, [R4,#0x310]
MOV             R0, R6
BL              sub_13F2CC
VMOV.F32        S16, S0
TST             R5, #0x100
BEQ             loc_135D48
MOV             R2, #0x10
MOV             R1, SP
ADD             R0, R4, #0x314
BL              sub_13F240
VLDR            S0, [R4,#0x314]
VLDR            S3, [R4,#0x318]
VLDR            S2, [R4,#0x31C]
VLDR            S1, [R4,#0x320]
VMUL.F32        S0, S0, S16
VMUL.F32        S3, S3, S16
VMUL.F32        S2, S2, S16
VMUL.F32        S1, S1, S16
VSTR            S0, [R4,#0x314]
VSTR            S3, [R4,#0x318]
VSTR            S2, [R4,#0x31C]
VSTR            S1, [R4,#0x320]
TST             R5, #0x200
BEQ             loc_135D90
MOV             R2, #0x10
MOV             R1, SP
ADD             R0, R4, #0x324
BL              sub_13F240
VLDR            S1, [R4,#0x324]
VLDR            S3, [R4,#0x328]
VLDR            S2, [R4,#0x32C]
VLDR            S0, [R4,#0x330]
VMUL.F32        S1, S1, S16
VMUL.F32        S3, S3, S16
VMUL.F32        S2, S2, S16
VMUL.F32        S0, S0, S16
VSTR            S1, [R4,#0x324]
VSTR            S3, [R4,#0x328]
VSTR            S2, [R4,#0x32C]
VSTR            S0, [R4,#0x330]
LDR             R0, [R4,#8]
ADD             R1, R4, #0x304
BL              sub_140FB0
ADD             SP, SP, #0x10
VPOP            {D8-D10}
POP             {R4-R8,PC}
