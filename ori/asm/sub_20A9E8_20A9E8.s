PUSH            {R4-R8,LR}
MOV             R4, R2
SUB             SP, SP, #0x20
MOV             R6, R0
MOV             R5, R1
LDRD            R0, R1, [R4,#8]
LDR             R8, =off_6CE970
UXTH            R7, R0
UXTH            R1, R1
LDR             R0, [R8]
BL              sub_52F4EC
LDR             R1, [R0,#0x18]
LDR             R2, [R0,#0x1C]
LDR             R0, [R0,#0x20]
ADD             R3, SP, #0x38+var_34
STR             R0, [SP,#0x38+var_2C]
STM             R3, {R1,R2}
ADD             R2, R4, #0x70 ; 'p'
LDR             R0, [R8]
ADD             R1, SP, #0x38+var_28
BL              sub_529034
VLDR            S0, [SP,#0x38+var_34]
VLDR            S1, [SP,#0x38+var_28]
ADD             R1, SP, #0x38+var_34
MOV             R0, R1
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_34]
VLDR            S0, [SP,#0x38+var_30]
VLDR            S1, [SP,#0x38+var_24]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_30]
VLDR            S0, [SP,#0x38+var_2C]
VLDR            S1, [SP,#0x38+var_20]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_2C]
BL              sub_480160
LDR             R0, [R8]
MOV             R8, #0
MOV             R3, #1
ADD             R2, SP, #0x38+var_34
MOV             R1, R7
STR             R8, [SP,#0x38+var_38]
BL              sub_52AEA8
LDRH            R2, [R4]
MOV             R1, R0
SUB             R3, R2, #0x100
SUBS            R3, R3, #0x2E ; '.'
BNE             loc_20AAB8
MOV             R3, R4
MOV             R2, R5
MOV             R0, R6
BL              sub_145674
ADD             SP, SP, #0x20 ; ' '
MOV             R0, R8
POP             {R4-R8,PC}
