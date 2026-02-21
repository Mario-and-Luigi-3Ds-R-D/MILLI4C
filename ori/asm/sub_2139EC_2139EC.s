PUSH            {R4-R6,LR}
MOV             R4, R2
LDR             R3, [R2,#8]!
MOV             R5, R1
LDR             R1, [R2,#0x1C]!
MOV             R6, R0
ADD             R0, R4, #0x78 ; 'x'
CMP             R1, #0
LDR             R1, =flt_6E236C
VLDR            S0, [R0]
UXTH            R12, R3
MOVNE           R3, #1
VLDR            S1, [R1]
MOVEQ           R3, #0
SUB             SP, SP, #8
VCMP.F32        S0, S1
ADD             R2, R2, #0x48 ; 'H'
VMRS            APSR_nzcv, FPSCR
BNE             loc_213A60
VLDR            S0, [R0,#4]
VLDR            S1, [R1,#(flt_6E2370 - 0x6E236C)]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_213A60
VLDR            S0, [R0,#8]
VLDR            S1, [R1,#(flt_6E2374 - 0x6E236C)]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
MOVEQ           R0, #0
STR             R0, [SP,#0x18+var_14]
LDR             R0, =off_6CE970
STR             R3, [SP,#0x18+var_18]
MOV             R3, #0
MOV             R1, R12
LDR             R0, [R0]
BL              sub_5294D0
CMP             R5, #0
ADDNE           R2, R5, #4
MOVEQ           R2, #0
CMP             R0, #0
LDRH            R0, [R4,#2]
VLDRNE          S0, =1.0
VLDREQ          S0, =0.0
MOV             R1, R6
BL              sub_145730
ADD             SP, SP, #8
MOV             R0, #0
POP             {R4-R6,PC}
