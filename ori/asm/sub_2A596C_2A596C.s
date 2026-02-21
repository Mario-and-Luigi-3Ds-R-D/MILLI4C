PUSH            {R4-R6,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xF23]
MOV             R5, R1
CMP             R0, #0
LDRBNE          R0, [R4,#0xEA4]
CMPNE           R0, #0
BEQ             locret_2A5A04
ADD             R0, R4, #0x8000
ADD             R0, R0, #0x308
ADD             R2, R5, #0x5C ; '\'
ADD             R1, R5, #0x118
STM             R0, {R1,R2}
LDRB            R0, [R4,#0xFE]
CMP             R0, #0
BEQ             loc_2A59EC
LDR             R0, [R4,#0x20C]
LDR             R1, [R0]
LDR             R1, [R1,#0x4C]
BLX             R1
LDR             R1, =0x534
LDRSH           R2, [R0,#0x18]
LDRSH           R1, [R1,R4]
CMP             R1, R2
BNE             loc_2A59EC
ADD             R1, R0, #0x10
ADD             R6, R4, #0x400
LDM             R1, {R1-R3}
ADD             R6, R6, #0x12C
STM             R6, {R1-R3}
LDR             R0, [R0,#0x1C]
STR             R0, [R4,#0x538]
MOV             R1, R5
MOV             R0, R4
POP             {R4-R6,LR}
MOV             R3, #5
MOV             R2, #1
B               sub_14B490
POP             {R4-R6,PC}
