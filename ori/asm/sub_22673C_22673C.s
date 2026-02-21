PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R7, R0
LDR             R0, [R1]
SUB             SP, SP, #0x38
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
MOV             R0, R7
BEQ             loc_226A5C
BL              sub_2273C0
LDR             R0, [R6]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, SP
BLX             R2
MOV             R1, SP
MOV             R2, #1
MOV             R0, R1
BL              sub_14C614
ADD             R5, R7, #0x12400
ADD             R5, R5, #0x2F4
LDR             R1, =0x13904
LDR             R0, [R5]
LDR             R8, =off_6CDA80
LDR             R1, [R1,R7]
LDR             R2, [R0,#0x2A0]
CMP             R2, #0
BEQ             loc_2268E8
CMP             R1, #1
BEQ             loc_2269F0
CMP             R1, #2
BEQ             loc_226A14
CMP             R1, #3
BEQ             loc_226A38
LDR             R1, [R0,#0x294]
MOV             R4, #4
STR             R1, [SP,#0x50+var_50]
LDR             R0, [R0,#0x298]
STR             R0, [SP,#0x50+var_4C]
LDR             R0, [R5]
LDR             R0, [R0,#0x42C]
STR             R0, [SP,#0x50+var_48]
LDR             R0, [R8]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
LDRB            R0, [R0]
CMP             R0, #2
BEQ             loc_226894
LDR             R0, [R6]
LDR             R1, [R0]
LDR             R2, [R1,#8]
ADD             R1, SP, #0x50+var_34
BLX             R2
ADD             R1, SP, #0x50+var_34
MOV             R2, #1
MOV             R0, R1
BL              sub_14C614
LDR             R0, [R5]
VLDR            S0, [SP,#0x50+var_34]
ADD             R3, SP, #0x50+var_24
ADD             R0, R0, #0x2A8
MOV             R2, #0
VLDR            S1, [R0]
ADD             R1, SP, #0x50+var_34
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_34]
VLDR            S1, [R0,#4]
VLDR            S0, [SP,#0x50+var_30]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_30]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x50+var_2C]
LDR             R0, =0x126F8
VADD.F32        S0, S0, S1
VLDR            S1, =-1.0
VSTR            S0, [SP,#0x50+var_2C]
VLDR            S0, =0.0
VSTR            S1, [SP,#0x50+var_24]
VSTR            S0, [SP,#0x50+var_20]
VSTR            S0, [SP,#0x50+var_1C]
LDR             R0, [R0,R7]
VLDR            S0, =3.0
BL              sub_229B1C
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x260
BL              sub_10A358
MOVS            R5, R0
NOP
BEQ             loc_226A64
LDR             R0, [R8]
ADD             R0, R0, #0x24 ; '$'
LDR             R0, [R0,#0x3C]
MOV             R2, R0
MOV             R3, SP
MOV             R1, R4
MOV             R0, R5
BL              sub_2244B0
NOP
NOP
B               loc_226A64
CMP             R1, #1
BEQ             loc_22693C
CMP             R1, #2
BEQ             loc_226978
CMP             R1, #3
BEQ             loc_2269B4
ADD             R0, R0, #0x264
VLDR            S0, [SP,#0x50+var_50]
VLDR            S1, [R0]
MOV             R4, #4
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_50]
VLDR            S1, [R0,#4]
VLDR            S0, [SP,#0x50+var_4C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_4C]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x50+var_48]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_48]
B               loc_2267EC
ADD             R0, R0, #0x240
VLDR            S0, [SP,#0x50+var_50]
VLDR            S1, [R0]
MOV             R4, #1
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_50]
VLDR            S1, [R0,#4]
VLDR            S0, [SP,#0x50+var_4C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_4C]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x50+var_48]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_48]
B               loc_226894
ADD             R0, R0, #0x24C
VLDR            S0, [SP,#0x50+var_50]
VLDR            S1, [R0]
MOV             R4, #2
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_50]
VLDR            S1, [R0,#4]
VLDR            S0, [SP,#0x50+var_4C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_4C]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x50+var_48]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_48]
B               loc_226894
ADD             R0, R0, #0x258
VLDR            S0, [SP,#0x50+var_50]
VLDR            S1, [R0]
MOV             R4, #3
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_50]
VLDR            S1, [R0,#4]
VLDR            S0, [SP,#0x50+var_4C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_4C]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x50+var_48]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_48]
B               loc_226894
LDR             R1, [R0,#0x270]
MOV             R4, #1
STR             R1, [SP,#0x50+var_50]
LDR             R0, [R0,#0x274]
STR             R0, [SP,#0x50+var_4C]
LDR             R0, [R5]
LDR             R0, [R0,#0x42C]
STR             R0, [SP,#0x50+var_48]
B               loc_226894
LDR             R1, [R0,#0x27C]
MOV             R4, #2
STR             R1, [SP,#0x50+var_50]
LDR             R0, [R0,#0x280]
STR             R0, [SP,#0x50+var_4C]
LDR             R0, [R5]
LDR             R0, [R0,#0x42C]
STR             R0, [SP,#0x50+var_48]
B               loc_226894
LDR             R1, [R0,#0x288]
MOV             R4, #3
STR             R1, [SP,#0x50+var_50]
LDR             R0, [R0,#0x28C]
STR             R0, [SP,#0x50+var_4C]
LDR             R0, [R5]
LDR             R0, [R0,#0x42C]
STR             R0, [SP,#0x50+var_48]
B               loc_226894
NOP
BL              sub_226490
LDR             R0, [R6]
LDR             R1, [R0]
LDR             R1, [R1,#0x1C]
BLX             R1
LDR             R0, [R6],#4
STR             R6, [SP,#0x50+var_3C]
ADD             R1, SP, #0x50+var_40
STR             R0, [SP,#0x50+var_40]
LDR             R2, [R6,#4]
ADD             R0, SP, #0x50+var_3C
STR             R2, [SP,#0x50+var_38]
STR             R0, [R2]
STR             R0, [R6,#4]
LDR             R0, =0x126FC
LDR             R0, [R0,R7]
BL              sub_22B67C
LDR             R1, [SP,#0x50+var_38]
ADD             R0, SP, #0x50+var_3C
CMP             R1, R0
BNE             loc_226ACC
LDR             R0, [SP,#0x50+var_40]
CMP             R0, #0
BEQ             loc_226ACC
MOV             R1, R0
MOV             R0, SP
BL              sub_5C9440
LDRD            R0, R1, [SP,#0x50+var_3C]
ADD             R7, R7, #0x12400
ADD             R7, R7, #0x2E8
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R7]
BL              sub_228010
ADD             SP, SP, #0x38 ; '8'
POP             {R4-R8,PC}
