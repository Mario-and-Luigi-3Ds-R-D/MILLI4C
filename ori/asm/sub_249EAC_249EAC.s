PUSH            {R4-R9,LR}
MOV             R5, R1
MOV             R4, R0
MOV             R8, #0
LDR             R7, =off_6CDD80
VPUSH           {D8}
VMOV.F32        S16, S0
LDRB            R1, [R0,#0x4E8]
SUB             SP, SP, #4
MOV             R0, #1
CMP             R1, #1
STRB            R0, [R4,#0x555]
BNE             loc_249F00
LDR             R0, [R7]
ADD             R1, R4, #0xEC
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x2D4
BL              sub_543B7C
MOV             R0, #2
STRB            R0, [R4,#0x4E8]
STRB            R8, [R4,#0x4EA]
VLDR            S0, [R4,#0x40]
VLDR            S2, [R4,#0x44]
VLDR            S3, [R5,#8]
VMUL.F32        S1, S0, S0
VLDR            S0, [R4,#0x48]
VMLA.F32        S1, S2, S2
VLDR            S2, [R5]
VMLA.F32        S1, S0, S0
VSQRT.F32       S0, S1
VLDR            S1, [R5,#4]
VADD.F32        S0, S0, S16
VMUL.F32        S2, S2, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S3, S0
VSTR            S2, [R4,#0x40]
VSTR            S1, [R4,#0x44]
VSTR            S0, [R4,#0x48]
LDR             R0, [R7]
BL              sub_388738
LDR             R0, [R7]
MOV             R3, #0x100
MOV             R2, #0
LDRB            R0, [R0,#0xE9E]
CMP             R0, #0
BEQ             loc_249F7C
MOV             R1, #0x16
ADD             R0, R4, #0xEC
BL              sub_14C430
NOP
NOP
B               loc_249F88
MOV             R1, #0x15
ADD             R0, R4, #0xEC
BL              sub_14C430
LDRB            R0, [R4,#0x4E8]
LDR             R9, =off_6CE970
ADD             R6, R4, #0x400
CMP             R0, #2
ADD             R6, R6, #0x144
BNE             loc_24A028
LDRB            R1, [R4,#0x4EA]
ADD             R0, R4, #0x400
CMP             R1, #0
BEQ             loc_249FBC
CMP             R1, #1
BNE             loc_24A008
B               loc_249FE8
LDR             R3, [R7]
LDR             R1, [R4,#0x544]
MOV             R2, #0x1D4
LDR             R5, =0x301FA
LDR             R3, [R3,#8]
ADD             R1, R2, R1,LSL#2
ADD             R1, R1, R3
LDR             R1, [R1]
STR             R1, [SP,#0x28+var_28]
STR             R1, [R0,#0x150]
B               loc_24A008
LDR             R1, [R7]
LDR             R5, =0x301FB
LDR             R2, [R1,#8]
LDR             R2, [R2,#0x1F8]
STR             R2, [SP,#0x28+var_28]
STR             R2, [R0,#0x150]
ADD             R0, R1, #0x58 ; 'X'
BL              sub_587164
LDR             R1, =sub_10D4F0
LDR             R0, [R9]
LDR             R12, =0xFFE683CC
MOV             R3, #0
MOV             R2, R5
LDR             R1, [R0,R1]
SUB             R0, R0, R12
BL              sub_503720
MOV             R0, R4
BL              sub_248B74
LDR             R0, [R4,#0x544]
ADD             R0, R0, #1
STR             R0, [R6]
STR             R8, [R4,#0x540]
LDR             R0, [R9]
BL              sub_5EE83C
CMP             R0, #0
NOP
BEQ             loc_24A060
LDR             R0, [R7]
BL              sub_388744
STRB            R8, [R4,#0x4E0]
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4-R9,PC}
