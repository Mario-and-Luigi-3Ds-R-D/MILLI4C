PUSH            {R4-R8,LR}
MOV             R4, R2
SUB             SP, SP, #0x20
MOV             R7, R0
MOV             R6, R1
LDRD            R0, R1, [R4,#8]
LDR             R8, =off_6CE970
UXTH            R5, R0
UXTH            R1, R1
LDR             R0, [R8]
BL              sub_52F4EC
ADD             R1, R0, #0x18
LDR             R0, [R0,#0x20]
LDM             R1, {R1,R2}
ADD             R3, SP, #0x38+var_34
STR             R0, [SP,#0x38+var_2C]
STM             R3, {R1,R2}
ADD             R2, R4, #0x70 ; 'p'
LDR             R0, [R8]
ADD             R1, SP, #0x38+var_28
BL              sub_529034
VLDR            S0, [SP,#0x38+var_34]
VLDR            S1, [SP,#0x38+var_28]
MOV             R1, #0
MOV             R3, R1
VADD.F32        S0, S0, S1
ADD             R2, SP, #0x38+var_34
VSTR            S0, [SP,#0x38+var_34]
VLDR            S0, [SP,#0x38+var_30]
VLDR            S1, [SP,#0x38+var_24]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_30]
VLDR            S0, [SP,#0x38+var_2C]
VLDR            S1, [SP,#0x38+var_20]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_2C]
LDR             R0, [R8]
STR             R1, [SP,#0x38+var_38]
MOV             R1, R5
BL              sub_52AEA8
LDRH            R2, [R4]
MOV             R1, R0
CMP             R2, #0x12C
BNE             loc_20AB88
MOV             R3, R4
MOV             R2, R6
MOV             R0, R7
BL              sub_145674
ADD             SP, SP, #0x20 ; ' '
MOV             R0, #0
POP             {R4-R8,PC}
