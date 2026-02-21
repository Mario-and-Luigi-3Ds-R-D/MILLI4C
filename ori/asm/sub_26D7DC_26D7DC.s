PUSH            {R4-R9,LR}
ADD             R1, R0, #0x400
MOV             R7, R0
ADD             R1, R1, #0x198
MOV             R2, #1
VPUSH           {D8}
SUB             SP, SP, #0x3C
MOV             R4, R1
MOV             R0, SP
BL              sub_14C614
MOV             R0, #0x400
BL              sub_11C418
VMOV            S0, R0
VLDR            S16, =0.5
VLDR            S1, [SP,#0x60+var_60]
LDR             R5, =off_6CE970
LDR             R6, =0xFFE683CC
LDR             R1, =0x300DD
VCVT.F32.U32    S0, S0
MOV             R2, #0
VMUL.F32        S2, S0, S16
VDIV.F32        S0, S1, S2
VSTR            S0, [SP,#0x60+var_60]
LDR             R0, [R5]
SUB             R0, R0, R6
BL              sub_503414
MOV             R2, #1
MOV             R1, R4
MOV             R0, SP
BL              sub_14C614
MOV             R0, #0x400
BL              sub_11C418
VMOV            S0, R0
VLDR            S1, [SP,#0x60+var_60]
LDR             R1, =0x300DE
MOV             R2, #0
VCVT.F32.U32    S0, S0
VMUL.F32        S2, S0, S16
VDIV.F32        S0, S1, S2
VSTR            S0, [SP,#0x60+var_60]
LDR             R0, [R5]
SUB             R0, R0, R6
BL              sub_503414
LDR             R0, [R7,#0x584]
MOV             R1, #2
MOV             R8, #0
LDR             R0, [R0,#-0xC]
ADD             R12, R0, #0x400
STRB            R1, [R0,#0x3F8]
LDR             R1, [R0,#0x6FC]
ADD             R12, R12, #0x84
STR             R8, [R1,#0x6F8]
STR             R8, [R0,#0x6F8]
STR             R8, [R0,#0x6FC]
STRB            R8, [R0,#0x56C]
STRB            R8, [R0,#0xF6]
LDR             R1, [R0,#0x49C]
LDR             R2, [R0,#0x4AC]
LDR             R3, [R0,#0x4BC]
STM             R12, {R1-R3}
LDR             R0, [R0,#0x71C]
CMP             R0, #0
BEQ             loc_26D8E4
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R7,#0x584]
SUB             R4, R0, #0xC
STR             R4, [R7,#0x584]
LDR             R1, [R4,#8]
SUB             R0, R0, #8
CMP             R1, R0
BNE             loc_26D918
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26D918
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R7,#0x584]
LDR             R0, [R0,#-0xC]
LDR             R0, [R0,#0x71C]
CMP             R0, #0
BEQ             loc_26D944
LDR             R1, [R0]
LDR             R1, [R1,#0x28]
BLX             R1
LDR             R0, [R7,#0x584]
LDR             R2, [R7,#0x580]
LDR             R1, =0x2AAAAAAB
ADD             R6, R7, #0x580
SUB             R0, R0, R2
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R5, R1, R0,ASR#31
CMP             R5, #0
MOV             R0, #0
BLS             loc_26D998
LDR             R2, [R6]
ADD             R1, R0, R0,LSL#1
LDR             R1, [R2,R1,LSL#2]
SUB             R2, R5, R0
ADD             R0, R0, #1
SUB             R2, R2, #1
UXTH            R0, R0
CMP             R5, R0
STRB            R2, [R1,#0x708]
BHI             loc_26D970
LDR             R0, [R7,#0x584]
ADD             R1, SP, #0x60+var_38
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x60+var_38]
STR             R2, [SP,#0x60+var_3C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x60+var_34]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x60+var_3C]
ADD             R1, R7, #0x34 ; '4'
ADD             R2, R0, #0x400
ADD             R2, R2, #0xC4
ADD             R0, SP, #0x60+var_30
BL              sub_1169FC
LDR             R1, [SP,#0x60+var_34]
ADD             R9, SP, #0x60+var_38
CMP             R1, R9
BNE             loc_26DA00
LDR             R0, [SP,#0x60+var_3C]
CMP             R0, #0
BEQ             loc_26DA00
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x60+var_38]
ADD             R3, R7, #0x40 ; '@'
CMP             R5, #0
VLDR            S16, =0.0
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R0, R7, #0x34 ; '4'
MOV             R1, #0x3F800000
STM             R0, {R1,R8}
MOV             R4, #0
STR             R8, [R7,#0x3C]
LDR             R2, [SP,#0x60+var_30]
STM             R3, {R2,R8}
ADD             R2, R7, #0x48 ; 'H'
ADD             R3, R7, #0x50 ; 'P'
STM             R2, {R1,R8}
LDR             R2, [SP,#0x60+var_2C]
STM             R3, {R2,R8}
STR             R1, [R7,#0x5C]
STR             R8, [R7,#0x58]
LDR             R1, [SP,#0x60+var_28]
ADDHI           R8, R5, #1
STR             R1, [R7,#0x60]
BLS             loc_26DA80
LDR             R1, [R6]
ADD             R0, R4, R4,LSL#1
LDR             R0, [R1,R0,LSL#2]
UXTH            R1, R8
BL              sub_27C964
ADD             R4, R4, #1
CMP             R5, R4
BHI             loc_26DA60
LDR             R0, [R7,#0x584]
ADD             R1, SP, #0x60+var_38
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x60+var_38]
STR             R2, [SP,#0x60+var_3C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x60+var_34]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x60+var_3C]
ADD             R1, SP, #0x60+var_54
BL              sub_5CCFE8
LDR             R0, [SP,#0x60+var_34]
CMP             R0, R9
BNE             loc_26DAD8
LDR             R0, [SP,#0x60+var_3C]
CMP             R0, #0
BEQ             loc_26DAD8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x60+var_38]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R7,#0x580]
ADD             R1, SP, #0x60+var_38
LDR             R2, [R0],#4
STR             R0, [SP,#0x60+var_38]
STR             R2, [SP,#0x60+var_3C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x60+var_34]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R3, [SP,#0x60+var_3C]
ADD             R1, SP, #0x60+var_48
MOV             R0, R3
BL              sub_5CCFE8
VLDR            S0, [SP,#0x60+var_48]
VLDR            S1, [SP,#0x60+var_54]
ADD             R4, R3, #0x400
VSUB.F32        S1, S0, S1
VSTR            S1, [SP,#0x60+var_48]
VLDR            S0, [SP,#0x60+var_40]
VLDR            S2, [SP,#0x60+var_4C]
VMUL.F32        S3, S1, S1
VSUB.F32        S0, S0, S2
VSTR            S0, [SP,#0x60+var_40]
VLDR            S2, [SP,#0x60+var_44]
VMLA.F32        S3, S2, S2
VMLA.F32        S3, S0, S0
VSQRT.F32       S1, S3
VSTR            S1, [R4,#0x30C]
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
VSTREQ          S16, [R4,#0x310]
BEQ             loc_26DB70
VDIV.F32        S0, S2, S1
BL              sub_5F5B2C
VSTR            S0, [R4,#0x310]
LDR             R0, [SP,#0x60+var_34]
CMP             R0, R9
BNE             loc_26DB94
LDR             R0, [SP,#0x60+var_3C]
CMP             R0, #0
BEQ             loc_26DB94
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x60+var_38]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8}
POP             {R4-R9,PC}
