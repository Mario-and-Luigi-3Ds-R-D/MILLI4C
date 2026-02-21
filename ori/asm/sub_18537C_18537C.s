PUSH            {R4-R11,LR}
MOV             R4, R0
VPUSH           {D8-D11}
SUB             SP, SP, #0xC
LDRB            R0, [R0,#0xDE]
TST             R0, #1
BEQ             loc_185F68
LDR             R0, =off_6D1648
LDR             R11, =0x41800000
VLDR            S18, =0.000015259
VLDR            S19, =6.2832
LDR             R0, [R0]
VLDR            S20, =0.15915
VLDR            S21, =1.0
VLDR            S22, =0.00001
LDR             R0, [R0,#0xC4]
VLDR            S16, =0.0
VLDR            S17, =16.0
ADD             R10, R4, #0x600
LDR             R8, [R0,#4]
ADD             R9, R4, #0x400
LDR             R0, [R8,#0x14]
LDR             R5, [R8,#4]
TST             R0, #0x80000
BEQ             loc_185C30
TST             R0, #0x100000
MOV             R6, #0
ADD             R7, R4, #0x5E0
BNE             loc_18556C
LDR             R0, [R5,#0x5E0]
TST             R0, #0x1E00
BNE             loc_185408
LDR             R0, [R5,#0x658]
TST             R0, #0xF
BEQ             loc_18556C
VLDR            S0, [R5,#0x108]
MOV             R0, SP
BL              sub_5F6640
VLDR            S0, [R5,#0x118]
ADD             R0, SP, #0x50+var_4C
BL              sub_5F6640
VLDMEA          SP, {S0-S1}
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1854A0
VLDR            S0, [R5,#0x110]
MOV             R0, SP
BL              sub_5F6640
VLDR            S0, [R5,#0x120]
ADD             R0, SP, #0x50+var_4C
BL              sub_5F6640
VLDMEA          SP, {S0-S1}
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1854A0
LDR             R0, [R4,#0x118]
STR             R0, [R4,#0x108]
LDR             R0, [R4,#0x120]
STR             R0, [R4,#0x110]
VSTR            S16, [R4,#0x124]
VSTR            S16, [R4,#0x12C]
LDR             R0, [R4,#4]
LDR             R1, [R4]
ADD             R0, R0, #0x14000
LDR             R3, [R1,#0x2E4]
LDR             R2, [R0,#0x174]
LDR             R1, [R0,#0x170]
MOV             R0, R4
BLX             R3
LDR             R0, [R4,#0x5E0]
MOV             R6, #0x8000
ORR             R0, R0, #0x400000
STR             R0, [R7]
LDR             R0, [R8,#0x14]
TST             R0, #0x200000
BEQ             loc_185564
LDRH            R0, [R8,#0x4E]
LDR             R1, [R5,#0x108]
ADD             R2, R5, #0x400
SUB             R0, R0, #1
CMP             R0, #0
MOVLT           R0, #0x7F
ADD             R0, R8, R0,LSL#4
ADD             R0, R0, #0x54 ; 'T'
STR             R1, [R0,#4]
LDR             R1, [R5,#0x110]
STR             R1, [R0,#8]
VLDR            S1, [R2,#0xB8]
VLDR            S0, [R5,#0x10C]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#0xC]
LDR             R0, [R4,#4]
LDRB            R1, [R5,#0xDC]
ADD             R0, R0, #0x14000
LDRB            R2, [R0,#0x290]
CMP             R2, R1
LDRBEQ          R0, [R0,#0x28F]
CMPEQ           R0, #2
BNE             loc_185550
VLDR            S0, [R4,#0x108]
VLDR            S1, [R5,#0x108]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_185550
VLDR            S0, [R4,#0x110]
VLDR            S1, [R5,#0x110]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_185550
LDR             R1, [R4]
LDR             R0, [R5,#0x464]
MOV             R2, #1
LDR             R3, [R1,#0x60]
AND             R1, R0, #0xF
MOV             R0, R4
BLX             R3
B               loc_185564
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x1DC]
MOV             R0, R4
BLX             R2
CMP             R6, #0
BNE             loc_1857E4
LDR             R0, [R8,#0x14]
TST             R0, #0x200000
BEQ             loc_1857E4
LDR             R0, [R4,#0x4EC]
TST             R0, #8
BEQ             loc_185644
ADD             R0, R5, #0x400
VLDR            S1, [R4,#0x10C]
VLDR            S3, [R9,#0xB8]
VLDR            S0, [R5,#0x10C]
VLDR            S2, [R0,#0xB8]
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_185644
LDRH            R0, [R8,#0x50]
VLDR            S1, [R4,#0x118]
ADD             R0, R8, R0,LSL#4
ADD             R0, R0, #0x54 ; 'T'
VLDR            S0, [R0,#4]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1855DC
VLDR            S2, [R4,#0x108]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_1855F8
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1855FC
VLDR            S1, [R4,#0x108]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_1855FC
MOV             R6, #4
VLDR            S1, [R4,#0x120]
VLDR            S0, [R0,#8]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_185620
VLDR            S2, [R4,#0x110]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_18563C
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_1857E4
VLDR            S1, [R4,#0x110]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_1857E4
MOV             R6, #4
B               loc_1857E4
LDRSB           R0, [R10,#0x5E]
CMN             R0, #1
BNE             loc_1857E4
LDRSB           R0, [R10,#0x5F]
CMN             R0, #1
BEQ             loc_1857E4
VLDR            S2, [R4,#0x10C]
VLDR            S1, [R4,#0x11C]
VLDR            S0, [R9,#0xB8]
VLDR            S3, [R9,#0xBC]
VADD.F32        S0, S2, S0
VADD.F32        S1, S1, S3
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_1857E4
ADD             R0, R5, #0x400
VLDR            S1, [R5,#0x10C]
VLDR            S2, [R0,#0xB8]
VADD.F32        S1, S1, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1857E4
LDRH            R0, [R8,#0x50]
VLDR            S1, [R4,#0x118]
VLDR            S0, [R4,#0x120]
SUB             R0, R0, #1
CMP             R0, #0
MOVLT           R0, #0x7F
VLDR            S5, [R4,#0x108]
ADD             R0, R8, R0,LSL#4
ADD             R0, R0, #0x54 ; 'T'
VLDR            S4, [R4,#0x110]
VLDR            S3, [R0,#4]
VLDR            S2, [R0,#8]
VSUB.F32        S1, S3, S1
VSUB.F32        S0, S2, S0
VSUB.F32        S3, S3, S5
VSUB.F32        S2, S2, S4
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_1856F4
VCMPE.F32       S3, S16
VMRS            APSR_nzcv, FPSCR
BCC             loc_18573C
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_18570C
VCMPE.F32       S3, S16
VMRS            APSR_nzcv, FPSCR
BGT             loc_18573C
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_185724
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BCC             loc_18573C
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_1857E4
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_1857E4
NOP
BL              sub_4643FC
ADD             R0, R0, #0x4000
UXTH            R0, R0
VMOV            S0, R0
MOV             R0, SP
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S18
VMUL.F32        S0, S0, S19
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S20
BL              sub_5F6640
VMOV            R0, S0
CMP             R0, #0x3F000000
B               loc_18579C
DCD off_6D1648
DCFS 0.000015259
DCFS 6.2832
DCFS 0.15915
DCFS 1.0
DCD 0x41800000
DCFS 0.00001
DCFS 0.0
DCFS 16.0
BLT             loc_1857BC
VLDR            S0, [SP,#0x50+var_50]
VADD.F32        S0, S0, S21
VMOV            R0, S0
VSTR            S0, [SP,#0x50+var_50]
CMP             R0, R11
VSUBGE.F32      S0, S0, S17
VSTRGE          S0, [SP,#0x50+var_50]
VLDR            S0, [SP,#0x50+var_50]
MOV             R2, #0
VCVT.U32.F32    S0, S0
VMOV            R0, S0
AND             R1, R0, #0xFF
LDR             R0, [R4]
LDR             R3, [R0,#0x60]
MOV             R0, R4
BLX             R3
MOV             R6, #4
VLDR            S1, [R4,#0x108]
VLDR            S2, [R5,#0x108]
VLDR            S0, [R4,#0x110]
VLDR            S3, [R5,#0x110]
VSUB.F32        S1, S2, S1
LDR             R0, [R4,#0x5E0]
VSUB.F32        S0, S3, S0
ANDS            R0, R0, #0x1E00
MOVNE           R0, #3
ORR             R6, R6, R0
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_185828
VLDR            S4, [R5,#0x118]
VCMPE.F32       S4, S2
VMRS            APSR_nzcv, FPSCR
BLS             loc_18587C
VCMPE.F32       S16, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_185844
VLDR            S4, [R5,#0x118]
VCMPE.F32       S2, S4
VMRS            APSR_nzcv, FPSCR
BLS             loc_18587C
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_185860
VLDR            S2, [R5,#0x120]
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BLS             loc_18587C
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_1859DC
VLDR            S2, [R5,#0x120]
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_1859DC
VMUL.F32        S4, S1, S1
ADD             R0, R8, #0x800
VLDR            S3, [R0,#0x54]
MOV             R0, #0
VMLA.F32        S4, S0, S0
VSQRT.F32       S2, S4
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
VLDRGT          S5, =0.00012207
BLE             loc_1859DC
VDIV.F32        S4, S3, S2
TST             R6, #0x8000
BEQ             loc_1858D0
VLDR            S2, [R5,#0x108]
ORR             R6, R6, #0x10
VMLS.F32        S2, S1, S4
VSTR            S2, [R4,#0x108]
VLDR            S1, [R5,#0x110]
VMLS.F32        S1, S0, S4
VSTR            S1, [R4,#0x110]
B               loc_1858E8
VLDR            S2, [R4,#0x108]
VMLA.F32        S2, S1, S4
VSTR            S2, [R5,#0x108]
VLDR            S1, [R4,#0x110]
VMLA.F32        S1, S0, S4
VSTR            S1, [R5,#0x110]
VLDR            S1, [R5,#0x108]
VLDR            S4, [R4,#0x108]
VLDR            S2, [R5,#0x110]
VLDR            S0, [R4,#0x110]
VSUB.F32        S1, S1, S4
VSUB.F32        S0, S2, S0
VMOV            R1, S1
VMUL.F32        S4, S1, S1
CMP             R1, #0x39000000
VSUBGE.F32      S1, S1, S5
VMLA.F32        S4, S0, S0
VSQRT.F32       S2, S4
BGE             loc_185928
VMOV            R1, S1
CMP             R1, #0xB9000000
VADDCS.F32      S1, S1, S5
VMOV            R1, S0
CMP             R1, #0x39000000
VSUBGE.F32      S0, S0, S5
BGE             loc_185944
VMOV            R1, S0
CMP             R1, #0xB9000000
VADDCS.F32      S0, S0, S5
VCMPE.F32       S2, S3
ADD             R0, R0, #1
VMRS            APSR_nzcv, FPSCR
BGT             loc_1858A4
CMP             R0, #0
BLE             loc_1859DC
TST             R6, #0x10
MOVNE           R6, R4
MOVEQ           R6, R5
LDR             R0, [R6]
LDR             R1, [R0,#0x3E0]
MOV             R0, R6
BLX             R1
LDR             R0, [R6]
LDR             R1, [R0,#0x288]
MOV             R0, R6
BLX             R1
LDR             R0, [R6]
LDR             R1, [R0,#0x28C]
MOV             R0, R6
BLX             R1
LDR             R0, [R4,#4]
LDR             R1, [R6]
ADD             R0, R0, #0x14000
ADD             R0, R0, #0x170
LDR             R3, [R1,#0x2E4]
LDM             R0, {R1,R2}
MOV             R0, R6
BLX             R3
LDR             R0, [R6]
LDR             R1, [R0,#0x32C]
MOV             R0, R6
BLX             R1
LDR             R0, [R6]
LDR             R1, [R0,#0x68]
MOV             R0, R6
BLX             R1
MOV             R6, #3
CMP             R6, #0
MOV             R2, #0
BEQ             loc_185A38
ADD             R0, R5, #0x800
CMP             R2, #1
VLDR            S1, [R0,#0x28]
BEQ             loc_185A04
CMP             R2, #2
ADDEQ           R0, R4, #0x800
VLDREQ          S1, [R0,#0x28]
LDR             R0, [R8]
MOV             R2, #1
VMOV.F32        S0, S16
MOV             R1, R2
LDR             R3, [R0,#0xEC]
MOV             R0, R8
BLX             R3
TST             R6, #0xFF
BEQ             loc_185C30
LDR             R0, [R8,#0x18]
TST             R0, #0x80
BEQ             loc_185C20
B               loc_185C30
LDR             R0, [R4,#0x608]
MOV             R3, #0
MOV             R12, R3
CMP             R0, #0
BEQ             loc_185A9C
LDR             R1, [R0]
TST             R1, #0x3C
BEQ             loc_185A74
LDR             R1, [R5,#0x60C]
CMP             R1, #0
BEQ             loc_185A9C
LDR             R6, [R1]
TST             R6, #0x3C
BEQ             loc_185AD0
B               loc_185A9C
VLDR            S0, [R0,#0x14]
VLDR            S2, [R0,#0x24]
VCMP.F32        S0, S2
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R0,#0x34]
VCMPEQ.F32      S2, S1
VMRSEQ          APSR_nzcv, FPSCR
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_185A58
LDR             R1, [R5,#0x608]
CMP             R1, #0
BEQ             loc_185BB8
LDR             R1, [R1]
TST             R1, #0x3C
BEQ             loc_185B44
LDR             R1, [R4,#0x60C]
CMP             R1, #0
BEQ             loc_185BB8
LDR             R6, [R1]
TST             R6, #0x3C
BEQ             loc_185B78
B               loc_185BB8
VLDR            S0, [R1,#0x14]
VLDR            S2, [R1,#0x24]
VCMP.F32        S0, S2
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R1,#0x34]
VCMPEQ.F32      S2, S1
VMRSEQ          APSR_nzcv, FPSCR
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_185A9C
LDR             R1, [R5,#0x608]
CMP             R1, #0
BEQ             loc_185BB8
LDR             R6, [R1]
TST             R6, #0x3C
BEQ             loc_185B1C
MOV             R3, #1
MOV             R2, R3
B               loc_185AA8
VLDR            S2, [R1,#0x14]
VLDR            S0, [R1,#0x24]
VCMP.F32        S2, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R1,#0x34]
VCMPEQ.F32      S0, S1
VMRSEQ          APSR_nzcv, FPSCR
VCMPEQ.F32      S1, S2
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_185B10
LDR             R1, [R5,#0x608]
VLDR            S2, [R1,#0x14]
VLDR            S1, [R1,#0x24]
VCMP.F32        S2, S1
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [R1,#0x34]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
VCMPEQ.F32      S0, S2
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_185BB8
B               loc_185AB4
DCFS 0.00012207
VLDR            S0, [R1,#0x14]
VLDR            S2, [R1,#0x24]
VCMP.F32        S0, S2
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R1,#0x34]
VCMPEQ.F32      S2, S1
VMRSEQ          APSR_nzcv, FPSCR
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
CMPNE           R0, #0
BEQ             loc_185BB8
LDR             R1, [R0]
TST             R1, #0x3C
BEQ             loc_185BF4
MOV             R12, #1
MOV             R2, #2
ORRS            R0, R3, R12
BEQ             loc_185C30
VLDR            S0, [R5,#0x108]
VLDR            S3, [R5,#0x118]
VLDR            S1, [R5,#0x110]
VLDR            S2, [R5,#0x120]
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S2
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VCMPEQ.F32      S1, S16
VMRSEQ          APSR_nzcv, FPSCR
MOVNE           R6, #3
MOVEQ           R6, #0x4000
B               loc_1859E8
VLDR            S0, [R0,#0x14]
VLDR            S1, [R0,#0x24]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
VLDREQ          S2, [R0,#0x34]
VCMPEQ.F32      S1, S2
VMRSEQ          APSR_nzcv, FPSCR
VCMPEQ.F32      S2, S0
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_185BB8
B               loc_185BB0
LDR             R0, =0x468
LDRH            R0, [R0,R5]
CMP             R0, #0
VSTRNE          S22, [R4,#0x124]
LDRB            R0, [R4,#0xDE]
TST             R0, #1
BEQ             loc_185CB8
LDR             R0, [R4]
ADD             R1, R4, #0x870
LDR             R2, [R0,#0x1F0]
MOV             R0, R4
BLX             R2
MOV             R0, R4
BL              sub_5735E0
LDR             R0, [R4]
LDR             R1, [R0,#0x3C4]
MOV             R0, R4
BLX             R1
MOV             R7, R0
LDR             R0, [R4]
MOV             R6, #0
LDR             R1, [R0,#0x3CC]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BLS             loc_185CB8
LDR             R0, [R7]
LDR             R1, [R0]
LDR             R1, [R1,#0x48]
BLX             R1
LDR             R0, [R4]
ADD             R7, R7, #4
ADD             R6, R6, #1
LDR             R1, [R0,#0x3CC]
MOV             R0, R4
BLX             R1
CMP             R0, R6
BHI             loc_185C88
LDR             R0, [R8,#0x14]
TST             R0, #0x80000
BEQ             loc_185F68
TST             R0, #0x200000
MOV             R6, #0
BEQ             loc_185F68
LDR             R0, [R4,#0x4EC]
TST             R0, #8
BEQ             loc_185D9C
ADD             R0, R5, #0x400
VLDR            S2, [R4,#0x10C]
VLDR            S3, [R9,#0xB8]
VLDR            S0, [R5,#0x10C]
VLDR            S1, [R0,#0xB8]
VADD.F32        S2, S2, S3
VADD.F32        S0, S0, S1
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_185D9C
LDRH            R0, [R8,#0x50]
VLDR            S1, [R4,#0x118]
ADD             R0, R8, R0,LSL#4
ADD             R0, R0, #0x54 ; 'T'
VLDR            S0, [R0,#4]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_185D34
VLDR            S2, [R4,#0x108]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_185D50
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_185D54
VLDR            S1, [R4,#0x108]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_185D54
MOV             R6, #4
VLDR            S1, [R4,#0x120]
VLDR            S0, [R0,#8]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_185D78
VLDR            S2, [R4,#0x110]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BGT             loc_185D94
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_185F18
VLDR            S1, [R4,#0x110]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_185F18
MOV             R6, #4
B               loc_185F20
LDRSB           R0, [R10,#0x5E]
CMN             R0, #1
BNE             loc_185F68
LDRSB           R0, [R10,#0x5F]
CMN             R0, #1
BEQ             loc_185F68
VLDR            S0, [R4,#0x10C]
VLDR            S2, [R4,#0x11C]
VLDR            S1, [R9,#0xB8]
VLDR            S3, [R9,#0xBC]
VADD.F32        S0, S0, S1
VADD.F32        S2, S2, S3
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
BHI             loc_185F68
ADD             R0, R5, #0x400
VLDR            S1, [R5,#0x10C]
VLDR            S2, [R0,#0xB8]
VADD.F32        S1, S1, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_185F68
LDRH            R0, [R8,#0x50]
VLDR            S1, [R4,#0x118]
VLDR            S3, [R4,#0x108]
SUB             R0, R0, #1
CMP             R0, #0
MOVLT           R0, #0x7F
VLDR            S0, [R4,#0x120]
ADD             R0, R8, R0,LSL#4
ADD             R0, R0, #0x54 ; 'T'
VLDR            S5, [R4,#0x110]
VLDR            S2, [R0,#4]
VLDR            S4, [R0,#8]
VSUB.F32        S1, S2, S1
VSUB.F32        S3, S2, S3
VSUB.F32        S0, S4, S0
VSUB.F32        S2, S4, S5
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_185E4C
VCMPE.F32       S3, S16
VMRS            APSR_nzcv, FPSCR
BCC             loc_185E94
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_185E64
VCMPE.F32       S3, S16
VMRS            APSR_nzcv, FPSCR
BGT             loc_185E94
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_185E7C
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BCC             loc_185E94
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_185F68
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_185F68
NOP
BL              sub_4643FC
ADD             R0, R0, #0x4000
UXTH            R0, R0
VMOV            S0, R0
MOV             R0, SP
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S18
VMUL.F32        S0, S0, S19
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S20
BL              sub_5F6640
VMOV            R0, S0
CMP             R0, #0x3F000000
BLT             loc_185EEC
VLDR            S0, [SP,#0x50+var_50]
VADD.F32        S0, S0, S21
VMOV            R0, S0
VSTR            S0, [SP,#0x50+var_50]
CMP             R0, R11
VSUBGE.F32      S0, S0, S17
VSTRGE          S0, [SP,#0x50+var_50]
VLDR            S0, [SP,#0x50+var_50]
MOV             R2, #0
VCVT.U32.F32    S0, S0
VMOV            R0, S0
AND             R1, R0, #0xFF
LDR             R0, [R4]
LDR             R3, [R0,#0x60]
MOV             R0, R4
BLX             R3
MOV             R6, #4
B               loc_185F20
CMP             R6, #0
BEQ             loc_185F68
ADD             R0, R5, #0x800
MOV             R2, #1
VLDR            S1, [R0,#0x28]
LDR             R0, [R8]
VMOV.F32        S0, S16
MOV             R1, R2
LDR             R3, [R0,#0xEC]
MOV             R0, R8
BLX             R3
TST             R6, #0xFF
BEQ             loc_185F68
LDR             R0, [R8,#0x18]
TST             R0, #0x80
BNE             loc_185F68
LDR             R0, =0x468
LDRH            R0, [R0,R5]
CMP             R0, #0
VSTRNE          S22, [R4,#0x124]
ADD             SP, SP, #0xC
VPOP            {D8-D11}
POP             {R4-R11,PC}
