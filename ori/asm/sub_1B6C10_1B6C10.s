PUSH            {R4-R7,LR}
MOV             R5, R0
MOV             R4, R1
LDR             R6, =0x40C90FDB
MOV             R7, #1
VPUSH           {D8-D15}
VMOV.F32        S16, S1
VMOV.F32        S22, S3
SUB             SP, SP, #0x44
VLDR            S1, =0.017453
VLDR            S25, =0.0
VLDR            S28, =6.2832
VMUL.F32        S2, S0, S1
VLDR            S0, [R0,#0x14]
VLDM            R0, {S17-S19}
VADD.F32        S0, S0, S2
VMOV            R0, S0
CMP             R0, R6
VSUBGE.F32      S0, S0, S28
BGE             loc_1B6C50
VCMPE.F32       S0, S25
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S28
BCC             loc_1B6C60
VLDR            S1, =-1.5708
VADD.F32        S1, S22, S1
VADD.F32        S0, S0, S1
VMOV.F32        S1, S0
VMOV            R0, S1
CMP             R0, R6
VSUBGE.F32      S1, S1, S28
BGE             loc_1B6C80
VCMPE.F32       S1, S25
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S1, S1, S28
BCC             loc_1B6C90
VLDR            S27, =1.0
VLDR            S30, =4.0
VSUB.F32        S21, S27, S16
VMUL.F32        S3, S21, S30
VMUL.F32        S1, S3, S1
VMOV            R0, S0
CMP             R0, R6
VSUBGE.F32      S0, S0, S28
BGE             loc_1B6CB4
VCMPE.F32       S0, S25
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S28
BCC             loc_1B6CC4
VADD.F32        S0, S0, S1
VMOV            R0, S0
CMP             R0, R6
VSUBGE.F32      S0, S0, S28
BGE             loc_1B6CD8
VCMPE.F32       S0, S25
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S28
BCC             loc_1B6CE8
VMOV            R0, S16
VLDR            S23, =1.0
VLDR            S3, =4.0
CMP             R0, #0x3E800000
VMLS.F32        S23, S16, S3
VMLALT.F32      S0, S23, S28
VMOV            R0, S0
CMP             R0, R6
MOVGT           R0, #0
BGT             loc_1B7070
VADD.F32        S2, S2, S1
VMOV.F32        S1, S25
VMOV.F32        S0, S25
MOV             R0, SP
BL              sub_462E40
ADD             R1, SP, #0x98+var_64
VLDR            S0, [SP,#0x98+var_5C]
VLDR            S6, [SP,#0x98+var_68]
VLDR            S7, [SP,#0x98+var_94]
VLDR            S8, [SP,#0x98+var_74]
VMLA.F32        S0, S6, S17
VLDM            R1, {S4-S5}
VMUL.F32        S6, S7, S18
VMUL.F32        S7, S8, S18
VLDR            S13, [SP,#0x98+var_84]
VMUL.F32        S4, S4, S18
VLDR            S9, [SP,#0x98+var_90]
VLDR            S1, [SP,#0x98+var_8C]
VLDR            S12, [SP,#0x98+var_98]
VMUL.F32        S8, S13, S18
VLDR            S11, [SP,#0x98+var_70]
VLDR            S3, [SP,#0x98+var_6C]
VLDR            S15, [SP,#0x98+var_78]
VMLA.F32        S1, S12, S17
VMLA.F32        S6, S9, S19
VMLA.F32        S4, S5, S19
VMLA.F32        S3, S15, S17
VMLA.F32        S7, S11, S19
VLDR            S10, [SP,#0x98+var_80]
VLDR            S2, [SP,#0x98+var_7C]
VLDR            S14, [SP,#0x98+var_88]
VMLA.F32        S8, S10, S19
VMLA.F32        S2, S14, S17
VADD.F32        S4, S4, S0
VADD.F32        S0, S6, S1
VADD.F32        S3, S7, S3
VADD.F32        S2, S8, S2
VDIV.F32        S1, S27, S4
VMUL.F32        S18, S0, S1
VMUL.F32        S0, S3, S1
VMUL.F32        S24, S2, S1
VMOV.F32        S1, S18
VMOV.F32        S19, S0
BL              sub_4645C0
VLDR            S1, =-0.024544
MOV             R0, SP
VMUL.F32        S20, S0, S1
VCMPE.F32       S20, S25
VMRS            APSR_nzcv, FPSCR
VMUL.F32        S1, S21, S28
VMOV.F32        S2, S25
VADDCC.F32      S20, S20, S28
VMOV.F32        S0, S25
VMOV.F32        S17, S1
BL              sub_462E40
ADD             R1, SP, #0x98+var_64
VLDR            S0, [SP,#0x98+var_5C]
VLDR            S6, [SP,#0x98+var_68]
VLDR            S1, [SP,#0x98+var_8C]
VLDR            S9, [SP,#0x98+var_98]
VMLA.F32        S0, S6, S18
VLDM            R1, {S4-S5}
ADD             R1, SP, #0x98+var_94
VMLA.F32        S1, S9, S18
VLDM            R1, {S7-S8}
VMUL.F32        S4, S4, S24
ADD             R1, SP, #0x98+var_84
VLDR            S2, [SP,#0x98+var_7C]
VMUL.F32        S6, S7, S24
VLDM            R1, {S10-S11}
ADD             R1, SP, #0x98+var_74
VLDR            S12, [SP,#0x98+var_88]
VLDR            S3, [SP,#0x98+var_6C]
VMUL.F32        S7, S10, S24
VLDM            R1, {S13-S14}
VMLA.F32        S4, S5, S19
VMLA.F32        S2, S12, S18
VLDR            S15, [SP,#0x98+var_78]
VMUL.F32        S9, S13, S24
VMLA.F32        S6, S8, S19
VMLA.F32        S3, S15, S18
VMLA.F32        S7, S11, S19
VADD.F32        S5, S4, S0
VMLA.F32        S9, S14, S19
VADD.F32        S4, S6, S1
VADD.F32        S0, S7, S2
VDIV.F32        S1, S27, S5
VADD.F32        S2, S9, S3
VMUL.F32        S24, S4, S1
VMUL.F32        S19, S0, S1
VMUL.F32        S26, S2, S1
VMOV.F32        S1, S24
VMOV.F32        S0, S19
BL              sub_4645C0
VLDR            S1, =0.024544
LDR             R1, =0xBF84AC2D
LDR             R0, [R5,#0x10]
VMUL.F32        S18, S0, S1
LDR             R2, =0x1B7811
ADD             R1, R1, R0
VCMPE.F32       S18, S25
VMRS            APSR_nzcv, FPSCR
VLDR            S31, =0.7854
VLDR            S29, =40.744
VADDCC.F32      S18, S18, S28
CMP             R1, R2
BCS             loc_1B6EFC
VADD.F32        S0, S20, S17
VMUL.F32        S0, S0, S29
BL              sub_464318
VCMPE.F32       S0, S25
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R5,#0x10]
VLDR            S2, =3.927
VNEGLT.F32      S0, S0
VSUB.F32        S1, S1, S2
VMLS.F32        S18, S0, S31
VMLS.F32        S18, S0, S1
B               loc_1B6F3C
LDR             R1, =0xBF69341C
LDR             R2, =0x1921FC
ADD             R0, R0, R1
CMP             R0, R2
BCS             loc_1B6F3C
VADD.F32        S0, S20, S17
VMUL.F32        S0, S0, S29
BL              sub_464318
VCMPE.F32       S0, S25
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R5,#0x10]
VLDR            S2, =5.4978
VNEGLT.F32      S0, S0
VSUB.F32        S1, S2, S1
VMLA.F32        S18, S0, S31
VMLA.F32        S18, S0, S1
VLDR            S0, [R5,#0x10]
VADD.F32        S0, S0, S18
VMOV            R0, S0
CMP             R0, R6
VSUBGE.F32      S0, S0, S28
BGE             loc_1B6F44
VCMPE.F32       S0, S25
VMRS            APSR_nzcv, FPSCR
VADDCC.F32      S0, S0, S28
BCC             loc_1B6F54
VMOV            R0, S16
CMP             R0, #0x3E800000
BGE             loc_1B6F7C
VMUL.F32        S1, S16, S30
VMUL.F32        S0, S1, S0
VMLA.F32        S0, S22, S23
VLDR            S1, =1.5708
VSTR            S25, [R4,#0x10]
VSTR            S25, [R4,#0x14]
VSUB.F32        S1, S22, S1
VMUL.F32        S3, S26, S16
VMUL.F32        S2, S19, S16
ADD             R0, R4, #0x2C ; ','
VSTR            S0, [R4,#0x18]
VMUL.F32        S0, S24, S16
VMUL.F32        S17, S1, S29
VSTR            S0, [R4,#0x28]
VSTM            R0, {S2-S3}
VMOV.F32        S0, S17
BL              sub_464318
VMOV.F32        S16, S0
VMOV.F32        S0, S17
BL              sub_464380
VMOV.F32        S1, S0
VLDR            S2, =42.5
VLDR            S0, [R4,#0x28]
VLDR            S3, =67.5
VMUL.F32        S4, S16, S2
VMUL.F32        S1, S1, S2
VMLA.F32        S0, S4, S21
VMLA.F32        S3, S1, S21
VSTR            S0, [R4,#0x28]
VLDR            S0, [R4,#0x2C]
VSTR            S25, [R4,#0x1C]
VADD.F32        S1, S3, S0
VLDR            S0, =18.0
VSTR            S0, [R4,#0x20]
VSTR            S25, [R4,#0x24]
VSUB.F32        S0, S1, S0
VSTR            S0, [R4,#0x2C]
B               loc_1B705C
DCFS 0.0
DCFS 0.017453
DCD 0x40C90FDB
DCFS 6.2832
DCFS -1.5708
DCFS 1.0
DCFS 4.0
DCFS -0.024544
DCFS 0.024544
DCD 0xBF84AC2D
DCD 0x1B7811
DCFS 0.7854
DCFS 40.744
DCFS 3.927
DCD 0xBF69341C
DCD 0x1921FC
DCFS 5.4978
DCFS 1.5708
DCFS 42.5
DCFS 67.5
DCFS 18.0
LDR             R0, [R5,#0x18]
STR             R0, [R4,#4]
VSTR            S27, [R4,#8]
VSTR            S27, [R4,#0xC]
MOV             R0, R7
ADD             SP, SP, #0x44 ; 'D'
VPOP            {D8-D15}
POP             {R4-R7,PC}
