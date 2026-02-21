NOP
PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R6, #0
LDR             R7, =off_6CDF98
MOV             R0, #2
VPUSH           {D8}
SUB             SP, SP, #0x1C
STRB            R6, [R4,#0x420]
STRB            R0, [R4,#4]
LDR             R0, [R7]
LDR             R3, [R4,#0xC]
MOV             R2, R6
LDR             R1, [R0,#0x168]
LDR             R0, [R3]
LDR             R12, [R0,#0x58]
MOV             R0, R3
BLX             R12
LDR             R0, [R4,#0xC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xB
BL              sub_14C548
LDR             R0, [R4,#0xC]
LDR             R3, [R7]
VLDR            S16, =0.0
ADD             R1, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
LDR             R5, [R3,#0x124]
STR             R0, [SP,#0x38+var_30]
STMEA           SP, {R1,R2}
MOV             R1, SP
VSTR            S16, [SP,#0x38+var_34]
MOV             R2, #1
MOV             R0, R1
BL              sub_14C614
ADD             R5, R5, #0x400
VLDR            S1, =200.0
VLDR            S0, [R5,#0x174]
MOV             R1, SP
MOV             R2, #2
VADD.F32        S0, S0, S1
MOV             R0, R1
VSTR            S0, [SP,#0x38+var_38]
BL              sub_14C6B0
LDR             R0, [R4,#0xC]
VLDR            S0, [SP,#0x38+var_38]
ADD             R1, SP, #0x38+var_2C
VLDR            S1, [R0,#0x24]
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_2C]
VSTR            S16, [SP,#0x38+var_28]
VSTR            S16, [SP,#0x38+var_24]
LDR             R0, [R4,#0xC]
VLDR            S0, [R5,#0x170]
ADD             R0, R0, #0x1DC
BL              sub_5A367C
LDR             R0, [R7]
VLDR            S1, =40.0
VLDR            S2, [R5,#0x164]
ADD             R2, SP, #0x38+var_2C
LDR             R0, [R0,#0x124]
MOV             R1, #1
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x150]
VSTR            S16, [SP,#0x38+var_2C]
VADD.F32        S0, S0, S1
VSUB.F32        S2, S0, S2
VLDR            S0, =1.0
VSTR            S0, [SP,#0x38+var_28]
VSTR            S16, [SP,#0x38+var_24]
VLDR            S0, [R5,#0x164]
LDR             R0, [R4,#0xC]
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
VLDR            S1, [R5,#0x170]
VMOVCC.F32      S2, S0
VLDR            S0, [R0,#0x28]
ADD             R0, R0, #0x1DC
VNEG.F32        S0, S0
BL              sub_5A28C4
LDR             R0, [R4,#0x10]
STR             R6, [R0,#0x71C]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R7,PC}
