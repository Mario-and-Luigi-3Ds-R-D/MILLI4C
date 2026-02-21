PUSH            {R4-R11,LR}
MOV             R5, R0
VPUSH           {D8-D9}
VMOV.F32        S17, S0
SUB             SP, SP, #0x5C
BL              sub_248B74
ADD             R0, R5, #0x70 ; 'p'
BL              sub_437414
VLDR            S18, =0.0
CMP             R0, #0
BEQ             loc_2499A0
LDR             R6, [R5,#8]
ADD             R7, R5, #0x70 ; 'p'
LDR             R4, [R6,#8]
CMP             R4, R6
BEQ             loc_249974
LDR             R1, [R4]
MOV             R0, R4
LDR             R2, [R1,#0x10]
MOV             R1, R7
BLX             R2
LDR             R4, [R4,#8]
CMP             R4, R6
BNE             loc_249954
ADD             R0, R5, #0x70 ; 'p'
ADD             R3, SP, #0x90+var_84
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R1, SP, #0x90+var_84
VSTR            S18, [SP,#0x90+var_80]
ADD             R0, R5, #0xEC
BL              sub_14E984
ADD             SP, SP, #0x5C ; '\'
VPOP            {D8-D9}
POP             {R4-R11,PC}
SXTH            R1, R0
VMOV            S2, R1
MOV             R2, R0,ASR#16
VMOV            S3, R2
VLDR            S4, =-1800.0
ADD             R1, R5, #0x44 ; 'D'
VLDR            S5, =-4712.4
VCVT.F32.S32    S6, S2
VLDR            S8, [R5,#0x40]
VCVT.F32.S32    S2, S3
VLDR            S0, [R5,#0x78]
VMUL.F32        S8, S8, S17
VLDR            S1, [R5,#0x70]
VLDR            S16, =3.4028e38
MOV             R3, #4
MOV             R7, #0
VMUL.F32        S3, S6, S4
VLDM            R1, {S6-S7}
VMUL.F32        S2, S2, S5
SXTH            R1, R0
VADD.F32        S8, S1, S8
MOV             R0, R0,ASR#16
VMUL.F32        S7, S7, S17
VMUL.F32        S6, S6, S17
VADD.F32        S3, S1, S3
VMOV            S1, R0
VADD.F32        S2, S0, S2
LDR             R0, =off_6CDD80
VADD.F32        S7, S0, S7
VMOV            S0, R1
VCVT.F32.S32    S1, S1
VADD.F32        S6, S18, S6
VCVT.F32.S32    S0, S0
VMUL.F32        S1, S1, S5
VMUL.F32        S0, S0, S4
VADD.F32        S4, S6, S18
VADD.F32        S1, S7, S1
VADD.F32        S0, S8, S0
VSUB.F32        S4, S4, S18
VSUB.F32        S1, S1, S2
VSUB.F32        S0, S0, S3
VSTR            S0, [SP,#0x90+var_5C]
VSTR            S4, [SP,#0x90+var_58]
VSTR            S1, [SP,#0x90+var_54]
LDR             R0, [R0]
LDR             R1, [R0,#8]
LDR             R1, [R1,#0xA0]
STR             R1, [SP,#0x90+var_8C]
VSTR            S3, [SP,#0x90+var_70]
VSTR            S18, [SP,#0x90+var_6C]
VSTR            S2, [SP,#0x90+var_68]
STR             R1, [SP,#0x90+var_64]
VLDR            S0, [R5,#0x70]
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R5,#0x78]
MOVGT           R1, #1
VCMPE.F32       S0, S18
MOVLE           R1, #0
VMRS            APSR_nzcv, FPSCR
MOVGT           R2, #1
MOVLE           R2, #0
ORR             R1, R1, R2,LSL#1
LDR             R2, [R0,#0xF74]
LDR             R0, [R0,#0xF78]
LDR             R2, [R2]
ADD             R0, R0, R2
LDR             R2, [R0,R1,LSL#3]
ADD             R1, R3, R1,LSL#3
ADD             R4, R0, R2
ADD             R2, R2, R0
LDR             R0, [R0,R1]
ADD             R1, R0, R0,LSL#2
ADD             R0, R1, R0,LSL#3
ADD             R6, R2, R0,LSL#2
CMP             R4, R6
ADD             R9, SP, #0x90+var_70
ADD             R8, SP, #0x90+var_5C
ADDNE           R10, SP, #0x90+var_50
ADDNE           R11, SP, #0x90+var_44
BEQ             loc_249B24
ADD             R3, SP, #0x90+var_84; int
MOV             R2, R4; int
MOV             R1, R8; int
MOV             R0, R9; int
STR             R10, [SP,#0x90+var_8C]; float
STR             R11, [SP,#0x90+var_90]; int
BL              sub_43A728
CMP             R0, #0
VLDRNE          S0, [SP,#0x90+var_84]
VCMPENE.F32     S16, S0
VMRSNE          APSR_nzcv, FPSCR
VMOVGT.F32      S16, S0
MOVGT           R7, R4
ADD             R4, R4, #0x34 ; '4'
CMP             R4, R6
BNE             loc_249AE4
LDR             R1, =0x7F7FFFFF
VMOV            R0, S16
CMP             R0, R1
BEQ             loc_249B4C
ADD             R1, R7, #0x24 ; '$'
MOV             R0, R5
BL              sub_2494E0
ADD             SP, SP, #0x5C ; '\'
VPOP            {D8-D9}
POP             {R4-R11,PC}
VMOV.F32        S0, S17
ADD             R0, R5, #4
BL              sub_436F30
LDR             R6, [R5,#8]
ADD             R7, R5, #0x70 ; 'p'
LDR             R4, [R6,#8]
CMP             R4, R6
BEQ             loc_249974
LDR             R1, [R4]
MOV             R0, R4
LDR             R2, [R1,#0x10]
MOV             R1, R7
BLX             R2
LDR             R4, [R4,#8]
CMP             R4, R6
BNE             loc_249B6C
B               loc_249974
