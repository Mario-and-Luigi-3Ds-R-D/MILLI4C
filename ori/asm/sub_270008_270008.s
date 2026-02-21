PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#8]
LDR             R5, =off_6CDF98
SUB             SP, SP, #0x28
CMP             R0, #3
BEQ             loc_2700B8
LDR             R0, [R5]
MOV             R1, SP
BL              sub_5CC8EC
LDR             R0, [R4,#4]
ADD             R1, SP, #0x38+var_28
LDR             R0, [R0,#0x584]
LDR             R2, [R0,#-0xC]!
ADD             R0, R0, #4
STR             R0, [SP,#0x38+var_28]
STR             R2, [SP,#0x38+var_2C]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x38+var_24]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x38+var_2C]
ADD             R1, SP, #0x38+var_20
BL              sub_5CCFE8
LDR             R1, [SP,#0x38+var_24]
ADD             R0, SP, #0x38+var_28
CMP             R1, R0
BNE             loc_270090
LDR             R0, [SP,#0x38+var_2C]
CMP             R0, #0
BEQ             loc_270090
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x38+var_28]
STR             R1, [R0,#4]
STR             R0, [R1]
VLDR            S0, [SP,#0x38+var_38]
VLDR            S1, [SP,#0x38+var_20]
MOV             R1, SP
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_38]
LDR             R0, [R4,#4]
BL              sub_2715F4
LDRB            R0, [R4,#8]
CMP             R0, #0
BEQ             loc_270148
CMP             R0, #1
BEQ             loc_27018C
CMP             R0, #2
BNE             loc_27020C
LDR             R0, [R4,#4]
ADD             R0, R0, #0x6C ; 'l'
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_27020C
MOV             R0, #3
STRB            R0, [R4,#8]
LDR             R0, [R4,#4]
BL              sub_5CC430
LDR             R5, =off_6CE970
LDR             R6, =0xFFE683CC
LDR             R1, =0x300D8
MOV             R2, #0
LDR             R0, [R5]
SUB             R0, R0, R6
BL              sub_503414
LDR             R0, [R4,#4]
NOP
BL              sub_5CC430
LDR             R0, [R5]
LDR             R1, =0x300D9
MOV             R2, #0
SUB             R0, R0, R6
BL              sub_503414
LDR             R0, [R4,#4]
ADD             SP, SP, #0x28 ; '('
POP             {R4-R6,LR}
B               sub_2707CC
LDR             R0, [R4,#4]
ADD             R0, R0, #0x6C ; 'l'
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_27020C
LDR             R1, [R5]
LDR             R0, [R4,#4]
LDR             R1, [R1,#0x124]
ADD             R0, R0, #0x6C ; 'l'
ADD             R1, R1, #0x400
VLDR            S0, [R1,#0x17C]
MOV             R1, #0
BL              sub_5A2708
MOV             R0, #1
NOP
B               loc_270208
LDR             R0, [R4,#4]
ADD             R0, R0, #0x6C ; 'l'
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_27020C
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2701E4
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2701E4
LDR             R0, =flt_711FD8
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S0, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R2, [R5]
LDR             R0, [R4,#4]
LDR             R1, =flt_711FD8
LDR             R2, [R2,#0x124]
ADD             R0, R0, #0x6C ; 'l'
ADD             R2, R2, #0x400
VLDR            S0, [R2,#0x180]
BL              sub_5A1E58
MOV             R0, #2
STRB            R0, [R4,#8]
ADD             SP, SP, #0x28 ; '('
POP             {R4-R6,PC}
