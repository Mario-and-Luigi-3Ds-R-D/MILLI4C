PUSH            {R4-R9,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x1C
LDR             R5, [R0,#4]
MOV             R0, R5
BL              sub_5A18EC
VLDR            S17, =0.0
ADD             R1, SP, #0x40+var_3C
VSTR            S17, [R5,#0xC]
VSTR            S17, [R5,#4]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x584]
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x40+var_3C]
STR             R2, [SP,#0x40+var_40]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x40+var_38]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x40+var_40]
BL              sub_5CCEF4
VMOV.F32        S16, S0
LDR             R1, [SP,#0x40+var_38]
ADD             R8, SP, #0x40+var_3C
CMP             R1, R8
BNE             loc_26D250
LDR             R0, [SP,#0x40+var_40]
CMP             R0, #0
BEQ             loc_26D250
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x40+var_3C]
MOV             R9, #0
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#4]
BL              sub_26D7DC
LDR             R1, [R4,#4]
ADD             R5, R4, #8
LDR             R7, [R1,#0x598]!
ADD             R1, R1, #4
LDM             R1, {R0,R6}
VMOV            S0, R0
MOV             R0, R5
VADD.F32        S16, S0, S16
BL              sub_5A26D0
STR             R7, [R5,#0x1C]
VSTR            S16, [R5,#0x20]
VMOV.F32        S1, S17
STR             R6, [R5,#0x24]
STR             R7, [R5,#4]
VSTR            S16, [R5,#8]
STR             R6, [R5,#0xC]
LDR             R0, =off_6CDF98
VLDR            S0, =1.0
VSTR            S1, [SP,#0x40+var_34]
ADD             R1, SP, #0x40+var_30
ADD             R2, SP, #0x40+var_34
VSTM            R1, {S0-S1}
VNEG.F32        S0, S16
LDR             R0, [R0]
MOV             R1, #1
LDR             R0, [R0,#0x124]
VLDR            S2, [R0,#0x190]
ADD             R0, R4, #8
BL              sub_5A290C
LDR             R0, [R4,#4]
ADD             R1, SP, #0x40+var_3C
LDR             R0, [R0,#0x584]
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x40+var_3C]
STR             R2, [SP,#0x40+var_40]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x40+var_38]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x40+var_40]
NOP
LDR             R0, [SP,#0x40+var_38]
CMP             R0, R8
BNE             loc_26D334
LDR             R0, [SP,#0x40+var_40]
CMP             R0, #0
BEQ             loc_26D334
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x40+var_3C]
STR             R1, [R0,#4]
STR             R0, [R1]
STRB            R9, [R4,#0xB0]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R9,PC}
