PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
MOV             R3, #0
VPUSH           {D8}
SUB             SP, SP, #0x24
LDR             R0, [R0]
MOV             R5, SP
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x46C
BL              sub_10A358
CMP             R0, #0
LDRNE           R1, [R4]
BLNE            sub_284094
STR             R0, [SP,#0x38+var_38]
ADD             R0, R5, #4
STR             R0, [SP,#0x38+var_30]
STR             R0, [SP,#0x38+var_34]
LDR             R3, [R4,#0x1C]
LDR             R0, [R4,#0x20]
LDR             R2, =0x2AAAAAAB
MOV             R1, SP
SUB             R3, R0, R3
SMULL           R3, R2, R2, R3
MOV             R3, R2,ASR#1
SUB             R2, R3, R2,ASR#31
ADD             R2, R2, #1
CMP             R2, #2
BHI             loc_287478
CMP             R0, #0
BEQ             loc_28746C
LDR             R2, [SP,#0x38+var_38]
ADD             R1, R1, #4
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x38+var_30]
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R0, [SP,#0x38+var_30]
LDR             R0, [R4,#0x20]
ADD             R0, R0, #0xC
STR             R0, [R4,#0x20]
LDR             R4, [SP,#0x38+var_38]
MOV             R0, #5
MOV             R1, #0
STRB            R0, [R4,#0x3F4]
MOV             R0, R4
BL              sub_14C3E8
LDR             R0, [R4,#0x464]
LDR             R1, [R0,#0xC]
STR             R1, [SP,#0x38+var_20]
LDR             R0, [R0,#0x28]
ADD             R1, SP, #0x38+var_20
STR             R0, [SP,#0x38+var_1C]
LDR             R0, [R4,#0x464]
LDR             R0, [R0,#0x14]
STR             R0, [SP,#0x38+var_18]
LDR             R0, [R4,#0x464]
VLDR            S16, [R0,#0x48]
MOV             R0, R4
BL              sub_14E984
VLDR            S0, =0.0
VLDR            S2, =1.0
VSTR            S0, [SP,#0x38+var_2C]
VSTR            S2, [SP,#0x38+var_28]
VSTR            S0, [SP,#0x38+var_24]
VLDR            S0, [R4,#0x28]
VMOV.F32        S1, S16
ADD             R2, SP, #0x38+var_2C
VNEG.F32        S0, S0
MOV             R1, #1
ADD             R0, R4, #0x1DC
BL              sub_5A28C4
LDR             R1, [SP,#0x38+var_30]
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_287520
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BEQ             loc_287520
BL              sub_2841C8
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x38+var_34]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8}
POP             {R4,R5,PC}
