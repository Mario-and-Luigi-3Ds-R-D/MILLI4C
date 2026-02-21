PUSH            {R4-R8,LR}
SUB             SP, SP, #0x10
LDR             R7, =off_6D1648
LDR             R0, [R7]
BL              sub_1E4614
VLDR            S0, =0.0
MOV             R6, R0
VSTR            S0, [SP,#0x28+var_28]
VSTR            S0, [SP,#0x28+var_24]
VSTR            S0, [SP,#0x28+var_20]
MOV             R1, R0
VSTR            S0, [SP,#0x28+var_1C]
MOV             R0, SP
BL              sub_2D9204
MOV             R5, #0
MOV             R4, R5
MOV             R8, #1
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x14C]
CMP             R0, #0
BEQ             loc_29B398
LDRB            R1, [R0,#0xB4]
CMP             R1, #1
BNE             loc_29B398
LDR             R1, [R0,#0x33C]
AND             R1, R1, #3
MOV             R1, R8,LSL R1
TST             R5, R1
BNE             loc_29B398
ADD             R0, R0, #0x2A8
VLDR            S0, [SP,#0x28+var_28]
VLDR            S1, [R0,#4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BGT             loc_29B398
VLDR            S1, [R0]
VLDR            S0, [SP,#0x28+var_24]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_29B398
VLDR            S1, [R0,#0xC]
VLDR            S0, [SP,#0x28+var_20]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_29B398
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x28+var_1C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
ORRLE           R5, R5, R1
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
BLT             loc_29B308
MOV             R0, #3
ADD             R4, R6, #0x400
BICS            R0, R0, R5
LDRH            R0, [R4,#0x68]
ANDEQ           R5, R5, #0xC
SUB             R0, R0, #8
CMP             R0, #8
LDR             R0, [R6]
ANDLS           R5, R5, #3
CMP             R5, #0
LDR             R2, [R0,#0x464]
BEQ             loc_29B3F4
MOV             R1, #4
MOV             R0, R6
BLX             R2
TST             R5, #8
MOV             R0, #0
MOVNE           R0, #8
BEQ             loc_29B408
B               loc_29B410
MOV             R1, #0
MOV             R0, R6
BLX             R2
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
TST             R5, #4
MOVNE           R0, #4
TST             R5, #1
ORRNE           R0, R0, #2
BNE             loc_29B424
TST             R5, #2
ORRNE           R0, R0, #1
ADD             R6, R6, #0x2400
ADD             R6, R6, #0x298
AND             R0, R0, #0xFF
LDRB            R1, [R6]
CMP             R1, #4
CMPNE           R1, #8
BEQ             loc_29B44C
STRB            R0, [R6]
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
CMP             R0, #1
CMPNE           R0, #2
LDREQ           R1, [R4,#0xE0]
STREQ           R1, [R4,#0xC8]
B               loc_29B440
