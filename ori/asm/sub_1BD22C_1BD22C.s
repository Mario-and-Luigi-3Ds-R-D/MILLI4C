PUSH            {R4-R11,LR}
MOV             R4, #2
MOV             R7, R0
VLDR            S1, =179.0
LDR             R9, =off_6D1648
VPUSH           {D8-D13}
SUB             SP, SP, #4
LDR             R0, [R0,#4]
VLDR            S22, =50.0
VLDR            S0, [R0,#0x108]
VLDR            S25, [R0,#0x10C]
LDR             R0, [R9]
VSUB.F32        S19, S0, S22
VADD.F32        S16, S0, S22
VADD.F32        S20, S25, S1
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, #2
BLS             loc_1BD5CC
MOV             R11, #1
VLDR            S24, =1.0
VLDR            S26, =0.63662
VLDR            S23, =0.0
VLDR            S21, =0.5
MOV             R10, #0x16
ADD             R8, R7, #0x1000
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R5,#0xAAC]
CMPEQ           R0, #0xF
BNE             loc_1BD5AC
LDR             R6, [R5,#0xAA8]
LDRH            R0, [R6,#0x52]
CMP             R0, #0
BEQ             loc_1BD3DC
CMP             R0, #2
VMOVNE.F32      S1, S23
VLDR            S0, [R5,#0x108]
VLDREQ          S1, [R6,#0x3C]
CMP             R0, #1
VMOV.F32        S3, S0
VMOVNE.F32      S4, S23
VSUB.F32        S17, S0, S1
VLDREQ          S4, [R6,#0x3C]
VLDR            S0, [R5,#0x10C]
VLDR            S2, [R6,#0x40]
VADD.F32        S18, S3, S4
VMOV.F32        S1, S0
VCMPE.F32       S17, S16
VMRS            APSR_nzcv, FPSCR
VMLA.F32        S0, S2, S21
VMLS.F32        S1, S2, S21
VCMPECC.F32     S19, S18
VMRSCC          APSR_nzcv, FPSCR
VCMPECC.F32     S1, S20
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_1BD5AC
VCMPE.F32       S0, S25
VMRS            APSR_nzcv, FPSCR
BLT             loc_1BD5AC
LDR             R0, [R7,#8]
VLDR            S20, =89.5
ADD             R4, R6, #8
STRH            R10, [R0]
LDR             R0, [R6,#4]
LDRB            R0, [R0,#0xDC]
STR             R0, [R8,#0x1F4]
LDRH            R0, [R6,#0x50]
LDR             R1, [R7,#4]
VLDR            S2, [R5,#0x10C]
BIC             R2, R0, #1
VMOV            S0, R2
TST             R0, #1
VLDR            S16, [R1,#0x10C]
MOV             R0, R4
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S21
VADDNE.F32      S0, S0, S24
VCVT.U32.F32    S1, S0
VADD.F32        S0, S16, S20
VSUB.F32        S0, S2, S0
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S2, S20
VLDR            S3, [R6,#0x40]
VNEGLT.F32      S0, S0
VCVT.F32.U32    S4, S1
VMLA.F32        S2, S3, S21
VDIV.F32        S1, S0, S2
VMUL.F32        S19, S1, S4
BL              sub_5A18EC
VSTR            S16, [R4,#0xC]
VSTR            S16, [R4,#4]
LDRH            R0, [R6,#0x52]
CMP             R0, #1
BEQ             loc_1BD5DC
CMP             R0, #2
BEQ             loc_1BD5F8
B               loc_1BD618
VLDR            S0, [R5,#0x108]
VLDR            S1, [R6,#0x40]
VLDR            S4, [R6,#0x3C]
VMOV.F32        S3, S0
VMLS.F32        S0, S1, S21
VLDR            S2, [R5,#0x10C]
VMLA.F32        S3, S1, S21
VADD.F32        S1, S2, S4
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VCMPECC.F32     S19, S3
VMRSCC          APSR_nzcv, FPSCR
VCMPECC.F32     S2, S20
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_1BD5AC
VCMPE.F32       S1, S25
VMRS            APSR_nzcv, FPSCR
BLT             loc_1BD5AC
LDR             R0, [R6,#4]
LDRB            R0, [R0,#0xDC]
STR             R0, [R8,#0x1F4]
LDR             R0, [R7,#4]
VLDR            S0, [R0,#0x11C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGT             loc_1BD45C
VLDR            S0, [R6,#0x48]
VLDR            S2, [R0,#0x10C]
VSUB.F32        S0, S1, S0
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_1BD47C
LDR             R1, [R7,#8]
MOV             R0, #0x17
STRH            R0, [R1]
LDR             R0, [R7,#4]
ADD             R0, R0, #0x400
VSTR            S23, [R0,#0xC8]
STRB            R11, [R8,#0x1F8]
B               loc_1BD5AC
LDR             R1, [R7,#8]
MOV             R0, #0
STRH            R10, [R1]
STRB            R0, [R8,#0x1F8]
LDR             R0, [R7,#4]
ADD             R0, R0, #0x400
VSTR            S23, [R0,#0x78]
LDR             R0, [R7,#4]
ADD             R0, R0, #0x400
VSTR            S23, [R0,#0xC8]
LDR             R2, [R7,#4]
LDR             R0, [R2,#0x4EC]
TST             R0, #1
BNE             loc_1BD4D0
VMOV.F32        S1, S23
LDR             R0, [R2]
VLDR            S0, [R6,#0x44]
LDR             R1, [R0,#0x214]
VMOV.F32        S2, S1
MOV             R0, R2
BLX             R1
LDRH            R0, [R6,#0x50]
VLDR            S1, [R5,#0x108]
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
LDR             R0, [R7,#4]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S21
VADDNE.F32      S0, S0, S24
VCVT.U32.F32    S17, S0
VLDR            S0, [R0,#0x108]
VSUB.F32        S1, S1, S0
VCMPE.F32       S1, S23
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S2, S22
VLDR            S0, [R6,#0x40]
VNEGLT.F32      S1, S1
VMLA.F32        S2, S0, S21
VDIV.F32        S0, S1, S2
BL              sub_5F5C58
VMUL.F32        S0, S0, S26
VCVT.F32.U32    S1, S17
LDR             R1, [R7,#4]
ADD             R0, R6, #8
STR             R0, [SP,#0x58+var_58]
VLDR            S18, [R1,#0x108]
VMUL.F32        S17, S0, S1
BL              sub_5A18EC
LDR             R0, [SP,#0x58+var_58]
LDR             R1, =0x40400000
VMOV.F32        S1, S17
VSTR            S18, [R0,#0xC]
LDR             R0, [SP,#0x58+var_58]
VSTR            S18, [R0,#4]
LDR             R0, [R7,#4]
VLDR            S0, [R5,#0x108]
LDR             R0, [R0,#0x124]
CMP             R0, R1
ADD             R0, R6, #8
BLE             loc_1BD5A4
BL              sub_5A14A4
NOP
NOP
B               loc_1BD5AC
DCFS 50.0
DCFS 179.0
DCD off_6D1648
DCFS 1.0
DCFS 0.63662
DCFS 0.0
DCFS 0.5
DCFS 89.5
DCD 0x40400000
NOP
BL              sub_5A1654
ADD             R0, R4, #1
AND             R4, R0, #0xFF
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, R4
BHI             loc_1BD298
ADD             SP, SP, #4
MOV             R0, #0
VPOP            {D8-D13}
POP             {R4-R11,PC}
LDR             R0, [R7,#4]
VLDR            S0, [R0,#0x118]
VSUB.F32        S0, S0, S22
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BGT             loc_1BD610
B               loc_1BD618
LDR             R0, [R7,#4]
VLDR            S0, [R0,#0x118]
VADD.F32        S0, S0, S22
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BCS             loc_1BD618
STRB            R11, [R8,#0x1F8]
B               loc_1BD634
VLDR            S0, [R5,#0x10C]
VMOV.F32        S1, S19
ADD             R0, R6, #8
VSUB.F32        S0, S0, S20
BL              sub_5A1654
MOV             R0, #0
STRB            R0, [R8,#0x1F8]
LDR             R0, [R7,#4]
LDR             R1, [R6,#0x4C]
STR             R1, [R0,#0x48C]
LDR             R0, [R7,#4]
LDR             R1, [R0,#0x4EC]
BIC             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
ADD             SP, SP, #4
MOV             R0, #1
VPOP            {D8-D13}
POP             {R4-R11,PC}
