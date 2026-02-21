PUSH            {R4-R6,LR}
MOV             R6, R0
LDR             R0, =off_6CE970
LDR             R1, =0x19B192
VPUSH           {D8-D9}
SUB             SP, SP, #0x18
LDR             R0, [R0]
LDRB            R1, [R1,R0]; loc_19B190
CMP             R1, #0
BEQ             loc_22C4D4
LDR             R1, =off_6CDA80
VLDR            S19, =1.0
ADD             R4, R6, #0x400
ADD             R2, R0, #0x100000
LDR             R1, [R1]
VLDR            S1, [R4,#0x64]
ADD             R2, R2, #0x9B000
ADD             R1, R1, #0x12400
ADD             R1, R1, #0x2F4
VLDR            S16, [R2,#(loc_19B134 - 0x19B000)]
LDR             R5, [R1]
VLDR            S18, =0.0
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
VLDR            S0, [R5,#0x310]
VCMPE.F32       S18, S16
VSUB.F32        S0, S19, S0
VMUL.F32        S0, S1, S0
VMRS            APSR_nzcv, FPSCR
VMOV.F32        S1, S16
VSTR            S0, [R4,#0x64]
VLDR            S2, [R5,#0x31C]
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VNEGGT.F32      S1, S1
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
VMOV            S1, R0
VLDR            S2, =0.0039062
VMOVLS.F32      S16, S18
VCVT.F32.S32    S1, S1
VMUL.F32        S17, S1, S2
VLDR            S1, [R5,#0x30C]
VMUL.F32        S2, S16, S17
VMLA.F32        S0, S1, S2
VSTR            S0, [R4,#0x64]
VLDR            S1, [R5,#0x308]
VNEG.F32        S2, S1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
BGT             loc_22C398
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S2
ADD             R0, R6, #0x24 ; '$'
VSTR            S0, [R4,#0x64]
LDM             R0, {R0-R2}
STMEA           SP, {R0-R2}
VLDR            S0, [R6,#0x24]
VLDR            S3, [R4,#0x64]
VLDR            S4, [R5,#0x300]
VLDR            S1, [R5,#0x314]
VMLA.F32        S0, S3, S17
VADD.F32        S2, S4, S1
VSUB.F32        S1, S4, S1
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_22C3E0
VLDR            S1, [R5,#0x318]
VMOV.F32        S0, S2
VNMUL.F32       S1, S3, S1
B               loc_22C3F8
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_22C3FC
VLDR            S2, [R5,#0x318]
VMOV.F32        S0, S1
VNMUL.F32       S1, S3, S2
VSTR            S1, [R4,#0x64]
VSTR            S0, [SP,#0x38+var_38]
VLDR            S1, [R4,#0x2C]
VLDR            S0, [SP,#0x38+var_34]
MOV             R1, SP
MOV             R0, R6
VADD.F32        S0, S0, S1
VLDR            S1, [R4,#0x70]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [SP,#0x38+var_34]
VLDR            S1, [R6,#0x3F8]
VLDR            S0, [SP,#0x38+var_30]
VMLA.F32        S0, S1, S17
VSTR            S0, [SP,#0x38+var_30]
BL              sub_14E984
VLDR            S1, [R5,#0x328]
VLDR            S0, [R4,#0x68]
VSUB.F32        S1, S19, S1
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#0x68]
VLDR            S1, [R5,#0x324]
VNMUL.F32       S1, S16, S1
VMLA.F32        S0, S1, S17
VSTR            S0, [R4,#0x68]
VLDR            S1, [R5,#0x320]
VNEG.F32        S2, S1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
BGT             loc_22C484
VCMPE.F32       S0, S2
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S2
VMOV.F32        S16, S18
ADD             R1, SP, #0x38+var_2C
MOV             R0, R6
VSTR            S0, [R4,#0x68]
VSTR            S16, [SP,#0x38+var_2C]
VSTR            S16, [SP,#0x38+var_28]
VSTR            S0, [SP,#0x38+var_24]
BL              sub_14E9C8
VLDR            S0, =0.017453
VLDR            S1, [R4,#0x68]
VSTR            S16, [SP,#0x38+var_2C]
VSTR            S16, [SP,#0x38+var_28]
VMUL.F32        S0, S1, S0
VMOV.F32        S1, S16
ADD             R0, R6, #0x400
ADD             R0, R0, #0xA8
VSTR            S0, [SP,#0x38+var_24]
VMOV.F32        S2, S0
VMOV.F32        S0, S16
BL              sub_462C40
ADD             SP, SP, #0x18
VPOP            {D8-D9}
POP             {R4-R6,PC}
