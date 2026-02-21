PUSH            {R4,R5,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x1C
LDRB            R0, [R0]
CMP             R0, #0xB
BNE             loc_1C5E18
LDRB            R0, [R4,#0x42]
LDR             R5, =off_6CE118
CMP             R0, #0
BNE             loc_1C5C98
LDR             R0, [R4,#0x1C]
LDR             R1, [R5]
LDR             R2, [R0]
ADD             R1, R1, #0x1400
ADD             R1, R1, #0xC8
LDR             R3, [R2,#0x58]
LDR             R1, [R1,#4]
MOV             R2, #0
BLX             R3
LDR             R0, [R5]
ADD             R0, R0, #0x1400
ADD             R0, R0, #0xE8
BL              sub_544034
LDR             R0, [R4,#0x1C]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xF
BL              sub_14C430
LDR             R0, [R4,#0x1C]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x28]
MOV             R1, SP
BLX             R3
LDR             R0, [R5]
VLDR            S0, [SP,#0x38+var_34]
ADD             R1, SP, #0x38+var_2C
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x29C
BL              sub_5D4970
LDR             R0, [R5]
LDR             R0, [R0,#8]
BL              sub_5D7894
LDR             R0, [SP,#0x38+var_2C]
VLDR            S1, [SP,#0x38+var_38]
VLDR            S0, [SP,#0x38+var_34]
VLDR            S16, =0.0
VLDR            S2, [R0,#0x44]
VLDR            S17, =1.0
VSUB.F32        S1, S1, S2
VSTR            S1, [SP,#0x38+var_38]
VLDR            S2, [R0,#0x48]
VMUL.F32        S1, S1, S1
VSUB.F32        S0, S0, S2
VMLA.F32        S1, S16, S16
VSTR            S0, [SP,#0x38+var_34]
VLDR            S2, [R0,#0x4C]
VLDR            S0, [SP,#0x38+var_30]
VSUB.F32        S0, S0, S2
VSTR            S0, [SP,#0x38+var_30]
VMLA.F32        S1, S0, S0
VSTR            S16, [SP,#0x38+var_34]
VSQRT.F32       S3, S1
VSTR            S3, [R4,#0x44]
VLDR            S0, [R0]
VLDR            S1, [R0,#0x54]
VLDR            S4, [R0,#0xB4]
VMLA.F32        S0, S1, S17
VLDR            S1, [R0,#8]
VSUB.F32        S2, S0, S1
VMOV.F32        S0, S1
VMLA.F32        S0, S2, S4
VCMPE.F32       S0, S3
VMRS            APSR_nzcv, FPSCR
BCS             loc_1C5D7C
ADD             R0, R4, #0x48 ; 'H'
BL              sub_5A18EC
VSTR            S16, [R4,#0x54]
VSTR            S16, [R4,#0x4C]
B               loc_1C5D94
VMLA.F32        S1, S2, S4
ADD             R0, R4, #0x48 ; 'H'
VDIV.F32        S18, S3, S1
BL              sub_5A18EC
VSTR            S18, [R4,#0x54]
VSTR            S18, [R4,#0x4C]
MOV             R2, SP
MOV             R1, R2
MOV             R0, R1
BL              sub_4632FC
VLDR            S0, [SP,#0x38+var_38]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [SP,#0x38+var_30]
BCS             loc_1C5DCC
VNEG.F32        S0, S0
BL              sub_5F5C58
VLDR            S1, =3.1416
VADD.F32        S0, S0, S1
B               loc_1C5DD4
NOP
BL              sub_5F5C58
VSTR            S0, [R4,#0x24]
LDR             R0, [R5]
VMOV.F32        S0, S17
LDR             R0, [R0,#8]
VLDR            S1, [R0,#0xFC]
ADD             R0, R4, #0x48 ; 'H'
BL              sub_5A12F8
LDR             R0, =off_6CE970
LDR             R12, =0xFFE683CC
LDR             R2, =0x301C7
MOV             R3, #0
LDR             R0, [R0]
MOV             R1, #0x1000
SUB             R0, R0, R12
BL              sub_503808
MOV             R0, #0xC
STRB            R0, [R4]
ADD             SP, SP, #0x1C
VPOP            {D8-D9}
POP             {R4,R5,PC}
