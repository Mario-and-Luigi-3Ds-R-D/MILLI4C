PUSH            {R3-R7,LR}
MOV             R4, R0
LDRB            R0, [R0]
CMP             R0, #0
BNE             locret_119A1C
MOV             R6, #1
LDR             R0, =byte_711DC4
STRB            R6, [R4]
BL              sub_121F38
VLDR            S0, =1.0
STRB            R6, [R4,#2]
VSTR            S0, [R4,#4]
VSTR            S0, [R4,#8]
VSTR            S0, [R4,#0xC]
MOV             R5, #0
VSTR            S0, [R4,#0x10]
STR             R5, [R4,#0x14]
STR             R5, [R4,#0x18]
STR             R5, [R4,#0x1C]
STR             R5, [R4,#0x20]
STRB            R5, [R4,#0x24]
STRB            R5, [R4,#0x25]
VSTR            S0, [R4,#0x2C]
LDR             R0, =byte_711DC4
VSTR            S0, [R4,#0x28]
BL              sub_121F60
BL              sub_10E034
ADD             R2, R6, #0x70000
MOV             R1, #1
MOV             R0, SP
BL              sub_1191B8
MOV             R6, R0
BL              sub_119244
ANDS            R0, R6, #0x80000000
MOV             R1, #1
BMI             loc_1199F4
LDRB            R0, [SP,#0x18+var_18]
CMP             R0, #0
MOVEQ           R1, #0
CMPNE           R0, #1
BEQ             loc_1199F4
CMP             R0, #2
MOVEQ           R1, #2
LDR             R0, =byte_711DC4
STRB            R1, [R4,#3]
BL              sub_122208
STR             R5, [R4,#0x30]
STR             R5, [R4,#0x34]
STR             R5, [R4,#0x38]
STR             R5, [R4,#0x3C]
ADD             R0, R4, #0x44 ; 'D'
STR             R5, [R4,#0x40]
BL              sub_118AE8
POP             {R3-R7,PC}
