PUSH            {R4-R10,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #8
BL              sub_1D1AC0
LDR             R0, =0x19CF48
ADD             R8, R4, R0
LDR             R0, [R8]
TST             R0, #4
BEQ             loc_1D70E0
LDR             R0, =loc_19CF5C
ADD             R6, R4, R0
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_1D6F74
LDR             R0, [R0]
CMP             R0, #2
CMPNE           R0, #4
BEQ             loc_1D70E0
MOV             R0, R4
BL              sub_5EE508
MOVS            R1, R0
LDR             R0, =0x19DF78
LDR             R10, =off_6CE970
ADD             R7, R4, #0x19C000
ADD             R7, R7, #0x1F40
ADD             R5, R4, R0
BEQ             loc_1D7000
MOV             R0, #0xFF
REV             R9, R0
MOV             R0, R7
BL              sub_4E63E0
MOV             R0, #0xFF
STR             R9, [R7,#4]
STR             R9, [R7]
REV             R7, R0
MOV             R0, R5
BL              sub_4E63E0
STR             R7, [R5,#4]
STR             R7, [R5]
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_1D70B0
BL              sub_4F32EC
LDR             R0, [R10]
ADD             R5, R0, #0x10C000
ADD             R5, R5, #0x214
MOV             R0, #0
BL              sub_58F1A0
MOV             R3, #0
MOV             R1, R0
MOV             R2, R3
MOV             R0, R5
B               loc_1D70AC
LDR             R0, [R6]
VLDR            S16, =30.0
CMP             R0, #0
BEQ             loc_1D70EC
MOV             R0, #0
REV             R0, R0
STR             R0, [SP,#0x30+var_30]
MOV             R0, R7
BL              sub_4E63E0
LDR             R0, [SP,#0x30+var_30]
STR             R0, [R7,#4]
STR             R0, [R7]
MOV             R0, #0xFF
REV             R0, R0
STR             R0, [SP,#0x30+var_30]
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, [SP,#0x30+var_30]
VMOV.F32        S0, S16
MOV             R1, SP
STR             R0, [R5,#4]
STR             R0, [R5]
MOV             R0, #0
REV             R0, R0
STR             R0, [SP,#0x30+var_30]
MOV             R0, R5
BL              sub_4E665C
LDR             R0, [R6]
NOP
BL              sub_4F31BC
LDR             R0, [R10]
ADD             R7, R0, #0x10C000
LDR             R0, [R6]
ADD             R7, R7, #0x214
BL              sub_5EC8FC
VCVT.S32.F32    S0, S0
MOV             R0, #0
VMOV            R5, S0
BL              sub_58F1A0
MOV             R1, R0
MOV             R3, #1
MOV             R2, R5
MOV             R0, R7
BL              sub_4C638C
LDR             R0, [R8]
LDR             R1, =unk_654254
MOV             R2, #0x21 ; '!'
ORR             R0, R0, #8
STR             R0, [R8]
MOV             R0, R4
BL              sub_529204
LDR             R2, =off_65403C
ADD             R0, R4, #0x1A0000
ADD             R0, R0, #0x5C ; '\'
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R10,PC}
MOV             R0, #0xFF
REV             R0, R0
STR             R0, [SP,#0x30+var_30]
MOV             R0, R7
BL              sub_4E63E0
LDR             R0, [SP,#0x30+var_30]
STR             R0, [R7,#4]
STR             R0, [R7]
MOV             R0, #0xFF
REV             R0, R0
STR             R0, [SP,#0x30+var_30]
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, [SP,#0x30+var_30]
VMOV.F32        S0, S16
MOV             R1, SP
STR             R0, [R5,#4]
STR             R0, [R5]
MOV             R0, #0
REV             R0, R0
STR             R0, [SP,#0x30+var_30]
MOV             R0, R7
BL              sub_4E665C
MOV             R0, #0
VMOV.F32        S0, S16
REV             R0, R0
MOV             R1, SP
STR             R0, [SP,#0x30+var_30]
MOV             R0, R5
BL              sub_4E665C
NOP
NOP
B               loc_1D70B0
