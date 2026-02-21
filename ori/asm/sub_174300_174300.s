PUSH            {R4-R10,LR}
MOV             R4, R0
ADD             R7, R4, #0x600
VPUSH           {D8-D11}
SUB             SP, SP, #0x20
LDR             R0, [R0,#0x648]
TST             R0, #0x2000000
LDRSHEQ         R0, [R7,#0x74]
CMNEQ           R0, #1
BEQ             loc_17482C
LDR             R1, [R4,#0x800]
ADD             R8, R4, #0x400
VLDR            S16, =0.0
LDRH            R0, [R8,#0x68]
LDR             R5, [R1,#0x38]
MOV             R6, #0
CMP             R0, #1
MOV             R9, R6
BEQ             loc_174358
CMP             R0, #4
BNE             loc_174440
B               loc_17441C
LDRH            R0, [R8,#0x6A]
CMP             R0, #1
BEQ             loc_174374
LDRSB           R0, [R5,#0x1D]
CMP             R0, #0
BLT             loc_174440
B               loc_17440C
VLDR            S0, [R4,#0x124]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [R4,#0x12C]
VCMPEQ.F32      S0, S16
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_174440
LDR             R0, [R4,#0x7FC]
LDR             R2, [R0,#0x10]
LDRB            R1, [R0,#0x6C]
LDR             R0, [R0,#4]
BL              sub_136824
LDRSB           R1, [R5,#0x1D]
MOV             R10, R0
CMP             R1, R10
LDRSBNE         R0, [R5,#0x1E]
CMPNE           R0, R10
BNE             loc_174440
LDR             R0, [R4,#0x7FC]
VLDR            S0, =0.0039062
MOV             R2, R10
VLDR            S1, [R0,#0x10]
LDRSH           R1, [R0,#0x14]
VCVT.F32.S32    S3, S1
VMOV            S2, R1
MOV             R1, #0xFFFFFFFF
VCVT.F32.S32    S1, S2
VMUL.F32        S17, S3, S0
VMLA.F32        S17, S1, S0
BL              sub_5F15E4
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BHI             loc_174440
LDRSB           R0, [R5,#0x1D]
CMP             R0, R10
BNE             loc_174414
MOV             R6, #1
B               loc_174440
MOV             R9, #1
B               loc_174440
LDRH            R0, [R8,#0x6A]
CMP             R0, #4
BEQ             loc_174440
LDRSB           R0, [R5,#0x1D]
CMP             R0, #0
LDRSB           R0, [R5,#0x1E]
MOVGE           R6, #1
CMP             R0, #0
BGE             loc_174414
ORRS            R0, R6, R9
BEQ             loc_17482C
LDR             R0, [R4,#0x648]
TST             R0, #0x2000000
BEQ             loc_174478
LDRH            R0, [R8,#0x6C]
CMP             R0, #0x32 ; '2'
BEQ             loc_17451C
VMOV.F32        S0, S16
LDR             R0, [R4,#0x66C]
MOV             R2, #0
MOV             R1, R4
VMOV.F32        S1, S0
BL              sub_1459F8
LDRSH           R0, [R7,#0x74]
CMN             R0, #1
BEQ             loc_17482C
LDRSB           R0, [R7,#0x5E]
CMN             R0, #1
BNE             loc_17482C
MOV             R5, #0
VLDR            S17, =-5.0
VLDR            S18, =-14.0
VLDR            S19, =5.0
MOV             R10, SP
VLDR            S0, [R4,#0x108]
ADD             R0, SP, #0x60+var_48
VADD.F32        S1, S0, S17
VADD.F32        S2, S0, S19
VSTR            S1, [SP,#0x60+var_60]
VLDR            S0, [R4,#0x110]
VADD.F32        S3, S0, S18
VSTR            S3, [SP,#0x60+var_5C]
VSTR            S1, [SP,#0x60+var_58]
VSTR            S0, [SP,#0x60+var_54]
VSTR            S2, [SP,#0x60+var_50]
VSTR            S0, [SP,#0x60+var_4C]
VSTM            R0, {S2-S3}
ADD             R0, R10, R5,LSL#3
LDR             R1, [R4]
VLDM            R0, {S0-S1}
MOV             R0, R4
LDR             R1, [R1,#0x2FC]
BLX             R1
CMP             R0, #0
BNE             loc_17482C
ADD             R5, R5, #1
CMP             R5, #4
BLT             loc_1744A4
LDR             R0, =dword_6D00F0
LDR             R5, =flt_6EBB94
LDR             R0, [R0,#(dword_6D00F4 - 0x6D00F0)]
TST             R0, #1
BNE             loc_1745A4
B               loc_174540
VMOV.F32        S0, S16
LDR             R0, [R4,#0x670]
MOV             R2, #0
MOV             R1, R4
VMOV.F32        S1, S0
BL              sub_1459F8
NOP
NOP
B               loc_174478
LDR             R0, =dword_6D00F4
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1745A4
LDR             R0, =flt_6EBB94
VLDR            S1, =-4.0
VLDR            S0, =4.0
VLDR            S2, =2.0
VSTR            S1, [R0]
VSTR            S16, [R0,#(flt_6EBB98 - 0x6EBB94)]
VSTR            S0, [R0,#(flt_6EBB9C - 0x6EBB94)]
VSTR            S16, [R0,#(flt_6EBBA0 - 0x6EBB94)]
VSTR            S16, [R0,#(flt_6EBBA4 - 0x6EBB94)]
VSTR            S2, [R0,#(flt_6EBBA8 - 0x6EBB94)]
VLDR            S1, =-8.0
VLDR            S0, =8.0
VSTR            S1, [R5,#(flt_6EBBAC - 0x6EBB94)]
VSTR            S16, [R5,#(flt_6EBBB0 - 0x6EBB94)]
VSTR            S0, [R5,#(flt_6EBBB4 - 0x6EBB94)]
VSTR            S16, [R5,#(flt_6EBBB8 - 0x6EBB94)]
VSTR            S16, [R5,#(flt_6EBBBC - 0x6EBB94)]
LDR             R0, =dword_6D00F4
VSTR            S2, [R5,#(flt_6EBBC0 - 0x6EBB94)]
NOP
LDR             R0, [R4,#0x464]
VLDR            S2, =22.5
VLDR            S1, =0.71111
AND             R0, R0, #0xF
VMOV            S0, R0
LDR             R1, [R4,#0x4F0]
AND             R0, R1, #1
ADD             R1, SP, #0x60+var_50
VCVT.F32.U32    S0, S0
ADD             R0, R0, R0,LSL#1
ADD             R5, R5, R0,LSL#3
ADD             R0, SP, #0x60+var_54
VMUL.F32        S0, S0, S2
VNMUL.F32       S0, S0, S1
BL              sub_462B20
VLDR            S20, [SP,#0x60+var_54]
VLDR            S17, [SP,#0x60+var_50]
VLDR            S22, =0.000015259
VNEG.F32        S21, S20
CMP             R6, #0
BEQ             loc_174734
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, [R5,#0x14]
VLDR            S18, [R5,#0x10]
LDR             R0, =dword_6D1F40
VSUB.F32        S1, S1, S18
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S22
VMLA.F32        S18, S0, S1
BL              sub_546DB0
TST             R0, #1
VNEGNE.F32      S18, S18
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, [R5,#0x14]
VLDR            S19, [R5,#0x10]
LDR             R0, =dword_6D1F40
VSUB.F32        S1, S1, S19
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S22
VMLA.F32        S19, S0, S1
BL              sub_546DB0
VLDR            S1, [R5]
TST             R0, #1
VNEGNE.F32      S19, S19
VADD.F32        S1, S1, S18
VMOV.F32        S2, S17
VLDR            S0, [R5,#4]
VMOV.F32        S3, S17
VADD.F32        S0, S0, S19
VMUL.F32        S2, S2, S1
VMUL.F32        S1, S21, S1
VMLA.F32        S2, S20, S0
VMLA.F32        S1, S3, S0
VMOV.F32        S0, S16
VADD.F32        S0, S2, S0
VMOV.F32        S2, S16
VSTR            S2, [SP,#0x60+var_5C]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x60+var_58]
VLDR            S3, [R4,#0x108]
VADD.F32        S0, S0, S3
VSTR            S0, [SP,#0x60+var_60]
VLDR            S3, [R8,#0x1B8]
VLDR            S0, [R4,#0x10C]
VADD.F32        S0, S0, S3
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0x60+var_5C]
VLDR            S0, [R4,#0x110]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x60+var_58]
B               loc_174714
DCFS 0.0
DCFS 0.0039062
DCFS -5.0
DCFS -14.0
DCFS 5.0
DCD flt_6EBB94
DCD dword_6D00F0
DCD dword_6D00F4
DCFS -4.0
DCFS 4.0
DCFS 2.0
DCFS -8.0
DCFS 8.0
DCFS 22.5
DCFS 0.71111
DCFS 0.000015259
DCD dword_6D1F40
LDR             R0, [R4,#4]
LDR             R1, [R4,#0x464]
LDRH            R3, [R7,#0x74]
LDR             R2, [R0]
LDR             R12, [R2,#0x94]
AND             R2, R1, #0xF
MOV             R1, SP
BLX             R12
CMP             R9, #0
BEQ             loc_17482C
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, [R5,#0x14]
VLDR            S18, [R5,#0x10]
LDR             R0, =dword_6D1F40
VSUB.F32        S1, S1, S18
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S22
VMLA.F32        S18, S0, S1
BL              sub_546DB0
TST             R0, #1
VNEGNE.F32      S18, S18
LDR             R0, =dword_6D1F40
BL              sub_546DB0
VMOV            S0, R0
VLDR            S1, [R5,#0x14]
VLDR            S19, [R5,#0x10]
LDR             R0, =dword_6D1F40
VSUB.F32        S1, S1, S19
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S22
VMLA.F32        S19, S0, S1
BL              sub_546DB0
VLDR            S1, [R5,#8]
TST             R0, #1
VNEGNE.F32      S19, S19
VADD.F32        S1, S1, S18
VMOV.F32        S2, S17
VLDR            S0, [R5,#0xC]
VSTR            S16, [SP,#0x60+var_5C]
VADD.F32        S0, S0, S19
VMUL.F32        S2, S2, S1
VMUL.F32        S1, S21, S1
VMLA.F32        S2, S20, S0
VMLA.F32        S1, S17, S0
VMOV.F32        S0, S16
VADD.F32        S0, S2, S0
VMOV.F32        S2, S16
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x60+var_58]
VLDR            S2, [R4,#0x108]
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0x60+var_60]
VLDR            S2, [R8,#0x1B8]
VLDR            S0, [R4,#0x10C]
VADD.F32        S0, S0, S2
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x60+var_5C]
VLDR            S0, [R4,#0x110]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x60+var_58]
LDR             R0, [R4,#4]!
LDRH            R3, [R7,#0x74]
LDR             R1, [R4,#0x460]
LDR             R2, [R0]
LDR             R12, [R2,#0x94]
AND             R2, R1, #0xF
MOV             R1, SP
BLX             R12
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8-D11}
POP             {R4-R10,PC}
