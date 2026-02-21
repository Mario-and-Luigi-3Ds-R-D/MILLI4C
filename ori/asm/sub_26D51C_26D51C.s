PUSH            {R4-R8,LR}
MOV             R4, R1
MOV             R7, R0
ADD             R5, R7, #0x400
VPUSH           {D8}
SUB             SP, SP, #0x30
LDR             R1, [R0,#0x580]
LDR             R0, [R0,#0x584]
ADD             R5, R5, #0x198
CMP             R1, R0
BNE             loc_26D558
LDR             R0, [R4]
MOV             R2, R5
MOV             R1, #0
B               loc_26D584
LDR             R0, [R0,#-0xC]
LDR             R0, [R0,#0x71C]
CMP             R0, #0
BEQ             loc_26D574
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
LDR             R0, [R7,#0x584]
MOV             R2, R5
LDR             R1, [R0,#-0xC]
LDR             R0, [R4]
BL              sub_27D884
LDR             R2, [R7,#0x580]
LDR             R0, [R7,#0x584]
LDR             R1, =0x2AAAAAAB
SUB             R2, R0, R2
SMULL           R3, R2, R1, R2
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #0xF
BHI             loc_26D5E0
CMP             R0, #0
BEQ             loc_26D5D4
LDR             R2, [R4],#4
STM             R0, {R2,R4}
ADD             R0, R0, #4
LDR             R2, [R4,#4]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R4,#4]
LDR             R0, [R7,#0x584]
ADD             R0, R0, #0xC
STR             R0, [R7,#0x584]
LDR             R2, [R7,#0x580]
ADD             R6, R7, #0x580
SUB             R0, R0, R2
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R4, R1, R0,ASR#31
CMP             R4, #0
MOV             R0, #0
BLS             loc_26D62C
LDR             R1, [R6]
ADD             R2, R0, R0,LSL#1
LDR             R1, [R1,R2,LSL#2]
SUB             R2, R4, R0
ADD             R0, R0, #1
SUB             R2, R2, #1
UXTH            R0, R0
CMP             R4, R0
STRB            R2, [R1,#0x708]
BHI             loc_26D604
CMP             R4, #0
MOV             R5, #0
BLS             loc_26D658
LDR             R1, [R6]
ADD             R0, R5, R5,LSL#1
LDR             R0, [R1,R0,LSL#2]
BL              sub_27C70C
ADD             R0, R5, #1
UXTH            R5, R0
CMP             R4, R5
BHI             loc_26D638
CMP             R4, #0
MOV             R5, #0
ADDHI           R8, R4, #1
BLS             loc_26D68C
LDR             R0, [R6]
ADD             R1, R5, R5,LSL#1
LDR             R0, [R0,R1,LSL#2]
UXTH            R1, R8
BL              sub_27C964
ADD             R0, R5, #1
UXTH            R5, R0
CMP             R4, R5
BHI             loc_26D668
LDR             R0, [R7,#0x584]
ADD             R1, SP, #0x50+var_28
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x50+var_28]
STR             R2, [SP,#0x50+var_2C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x50+var_24]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x50+var_2C]
ADD             R1, SP, #0x50+var_44
BL              sub_5CCFE8
LDR             R1, [SP,#0x50+var_24]
ADD             R5, SP, #0x50+var_28
CMP             R1, R5
BNE             loc_26D6E8
LDR             R0, [SP,#0x50+var_2C]
CMP             R0, #0
BEQ             loc_26D6E8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x50+var_28]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R7,#0x580]
ADD             R1, SP, #0x50+var_28
LDR             R2, [R0],#4
STR             R0, [SP,#0x50+var_28]
STR             R2, [SP,#0x50+var_2C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x50+var_24]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R3, [SP,#0x50+var_2C]
ADD             R1, SP, #0x50+var_38
MOV             R0, R3
BL              sub_5CCFE8
VLDR            S0, [SP,#0x50+var_38]
VLDR            S1, [SP,#0x50+var_44]
VLDR            S16, =0.0
ADD             R4, R3, #0x400
VSUB.F32        S1, S0, S1
VSTR            S1, [SP,#0x50+var_38]
VLDR            S0, [SP,#0x50+var_30]
VLDR            S2, [SP,#0x50+var_3C]
VMUL.F32        S3, S1, S1
VSUB.F32        S0, S0, S2
VSTR            S0, [SP,#0x50+var_30]
VLDR            S2, [SP,#0x50+var_34]
VMLA.F32        S3, S2, S2
VMLA.F32        S3, S0, S0
VSQRT.F32       S1, S3
VSTR            S1, [R4,#0x30C]
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
VSTREQ          S16, [R4,#0x314]
BEQ             loc_26D798
VDIV.F32        S0, S2, S1
BL              sub_5F5B2C
VSTR            S0, [R4,#0x314]
VLDR            S1, [SP,#0x50+var_38]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
VNEGGT.F32      S0, S0
VSTRGT          S0, [R4,#0x314]
LDR             R0, [SP,#0x50+var_24]
CMP             R0, R5
BNE             loc_26D7BC
LDR             R0, [SP,#0x50+var_2C]
CMP             R0, #0
BEQ             loc_26D7BC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x50+var_28]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x30 ; '0'
VPOP            {D8}
POP             {R4-R8,PC}
