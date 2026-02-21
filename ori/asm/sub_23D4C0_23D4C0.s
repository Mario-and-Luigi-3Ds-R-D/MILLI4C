PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R6, R2
MOV             R7, R3
LDR             R8, =0x43340000
LDR             R9, =0xBDCCCCCD
VPUSH           {D8-D13}
VMOV.F32        S19, S0
SUB             SP, SP, #0x1C
ORR             R11, R8, R8,LSL#13
BIC             R10, R9, R8,LSL#13
LDRB            R0, [R0,#0xAC0]
VLDR            S0, =36.0
VLDR            S26, =57.296
CMP             R0, #0
ADD             R0, R4, #0x800
VLDR            S25, =1.4062
VLDR            S1, [R0,#0x298]
LDR             R0, [R4,#4]
VLDR            S24, =360.0
VADDEQ.F32      S16, S1, S0
VSUBNE.F32      S16, S0, S1
VLDR            S0, =39601.0
VMOV.F32        S2, S1
VLDR            S1, [R0,#0x108]
VLDR            S23, =0.0
VADD.F32        S1, S1, S2
VMLA.F32        S0, S16, S16
VSQRT.F32       S20, S0
VLDR            S0, [R0,#0x10C]
VSTR            S1, [SP,#0x70+var_70]
VSTR            S0, [SP,#0x70+var_6C]
VLDM            R5, {S2-S3}
VMUL.F32        S21, S20, S20
VSUB.F32        S18, S2, S1
VSUB.F32        S17, S3, S0
VMUL.F32        S0, S18, S18
VMLA.F32        S0, S17, S17
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
BCS             loc_23D640
VMUL.F32        S1, S16, S16
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S1, S0
VCMPEGE.F32     S21, S1
VMRSGE          APSR_nzcv, FPSCR
BLT             loc_23D640
VSQRT.F32       S2, S0
LDRB            R0, [R4,#0xAC0]
CMP             R0, #0
VNEGEQ.F32      S1, S16
VMOVNE.F32      S1, S16
VDIV.F32        S0, S1, S2
BL              sub_5F5B2C
VMUL.F32        S22, S0, S26
VMOV.F32        S1, S18
VMOV.F32        S0, S17
BL              sub_4645C0
VMUL.F32        S0, S0, S25
LDRB            R1, [R4,#0xAC0]
VSUB.F32        S0, S0, S22
VMOV            R0, S0
CMP             R0, R8
VSUBGE.F32      S0, S0, S24
VMOV            R0, S0
CMP             R0, R11
VADDCS.F32      S0, S0, S24
CMP             R1, #0
BEQ             loc_23D5E8
CMP             R1, #1
BEQ             loc_23D614
B               loc_23D600
VMOV            R0, S0
CMP             R0, R9
VCMPECC.F32     S0, S23
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_23D6E0
VMOV.F32        S0, S23
CMP             R1, #0
BEQ             loc_23D6E0
CMP             R1, #1
BEQ             loc_23D628
B               loc_23D640
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
VMOVGT          R0, S0
CMPGT           R10, R0
BGT             loc_23D5FC
VCMPE.F32       S19, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_23D640
VCMPE.F32       S23, S0
VMRS            APSR_nzcv, FPSCR
BGE             loc_23D8D0
VLDM            R6, {S0-S1}
VADD.F32        S22, S18, S0
VADD.F32        S18, S17, S1
VMUL.F32        S0, S22, S22
VMLA.F32        S0, S18, S18
VCMPE.F32       S0, S21
VMRS            APSR_nzcv, FPSCR
BCS             loc_23D754
VMUL.F32        S1, S16, S16
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGE.F32      S1, S0
VCMPEGE.F32     S21, S1
VMRSGE          APSR_nzcv, FPSCR
BLT             loc_23D754
VSQRT.F32       S2, S0
LDRB            R0, [R4,#0xAC0]
CMP             R0, #0
VNEGEQ.F32      S1, S16
VMOVNE.F32      S1, S16
VDIV.F32        S0, S1, S2
BL              sub_5F5B2C
VMUL.F32        S17, S0, S26
VMOV.F32        S1, S22
VMOV.F32        S0, S18
BL              sub_4645C0
VMUL.F32        S0, S0, S25
VSUB.F32        S0, S0, S17
VMOV            R0, S0
CMP             R0, R8
VSUBGE.F32      S0, S0, S24
VMOV            R0, S0
CMP             R0, R11
VADDCS.F32      S0, S0, S24
LDRB            R0, [R4,#0xAC0]
CMP             R0, #0
BEQ             loc_23D6FC
CMP             R0, #1
BEQ             loc_23D728
B               loc_23D714
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
BLT             loc_23D640
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BHI             loc_23D640
B               loc_23D8D0
VMOV            R1, S0
CMP             R1, R9
VCMPECC.F32     S0, S23
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_23D860
VMOV.F32        S0, S23
CMP             R0, #0
BEQ             loc_23D860
CMP             R0, #1
BEQ             loc_23D73C
B               loc_23D754
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
VMOVGT          R1, S0
CMPGT           R10, R1
BGT             loc_23D710
VCMPE.F32       S19, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_23D754
VCMPE.F32       S23, S0
VMRS            APSR_nzcv, FPSCR
BGE             loc_23D8D0
VLDM            R6, {S2-S3}
ADD             R0, SP, #0x70+var_60
VLDR            S1, [R5]
VLDR            S0, [R5,#4]
ADD             R3, SP, #0x70+var_68
VADD.F32        S1, S1, S2
VADD.F32        S0, S0, S3
MOV             R2, SP
MOV             R1, R5
VSTR            S1, [SP,#0x70+var_60]
VSTR            S0, [SP,#0x70+var_5C]
VMOV.F32        S0, S20
BL              sub_45A8A4
CMP             R0, #0
NOP
BEQ             loc_23D8FC
VLDR            S1, [R5]
VLDR            S0, [SP,#0x70+var_68]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_23D7BC
VLDR            S2, [R5,#4]
VLDR            S1, [SP,#0x70+var_64]
VCMP.F32        S1, S2
VMRS            APSR_nzcv, FPSCR
BEQ             loc_23D8FC
VLDR            S1, [SP,#0x70+var_70]
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x70+var_68]
VLDR            S0, [SP,#0x70+var_64]
VLDR            S1, [SP,#0x70+var_6C]
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x70+var_64]
LDRB            R0, [R4,#0xAC0]
VLDR            S0, =199.0
CMP             R0, #0
VNEGEQ.F32      S16, S16
VMOV.F32        S1, S16
BL              sub_4645C0
VMOV.F32        S2, S0
VLDR            S0, [SP,#0x70+var_64]
VLDR            S1, [SP,#0x70+var_68]
VMUL.F32        S16, S2, S25
BL              sub_4645C0
VMUL.F32        S0, S0, S25
VSUB.F32        S0, S0, S16
VMOV            R0, S0
CMP             R0, R8
VSUBGE.F32      S0, S0, S24
VMOV            R0, S0
CMP             R0, R11
VADDCS.F32      S0, S0, S24
LDRB            R0, [R4,#0xAC0]
CMP             R0, #0
BEQ             loc_23D87C
CMP             R0, #1
BEQ             loc_23D8A8
B               loc_23D894
DCFS 36.0
DCFS 39601.0
DCFS 57.296
DCFS 1.4062
DCD 0x43340000
DCD 0xBDCCCCCD
DCFS 360.0
DCFS 0.0
DCFS 199.0
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
BLT             loc_23D754
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BHI             loc_23D754
B               loc_23D8D0
VMOV            R1, S0
CMP             R1, R9
VCMPECC.F32     S0, S23
VMRSCC          APSR_nzcv, FPSCR
BCS             loc_23D8E4
VMOV.F32        S0, S23
CMP             R0, #0
BEQ             loc_23D8E4
CMP             R0, #1
BEQ             loc_23D8BC
B               loc_23D8FC
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
VMOVGT          R1, S0
CMPGT           R10, R1
BGT             loc_23D890
VCMPE.F32       S19, S0
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S0, S23
VMRSLS          APSR_nzcv, FPSCR
BHI             loc_23D8FC
VSTR            S0, [R7]
ADD             SP, SP, #0x1C
MOV             R0, #1
VPOP            {D8-D13}
POP             {R4-R11,PC}
VCMPE.F32       S0, S23
VMRS            APSR_nzcv, FPSCR
BLT             loc_23D8FC
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BLS             loc_23D8D0
ADD             SP, SP, #0x1C
MOV             R0, #0
VPOP            {D8-D13}
POP             {R4-R11,PC}
