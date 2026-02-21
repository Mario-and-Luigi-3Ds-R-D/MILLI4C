PUSH            {R4,LR}
LDR             R4, =byte_6D23B8
LDRB            R0, [R4]
CMP             R0, #0
BNE             loc_109C08
BL              sub_1192B4
ANDS            R0, R0, #0x80000000
BMI             loc_109C08
BL              sub_119380
ANDS            R0, R0, #0x80000000
BMI             loc_109C08
BL              sub_11985C
ANDS            R0, R0, #0x80000000
BMI             loc_109C08
MOV             R0, #2
BL              sub_119A90
MOV             R0, #1
STRB            R0, [R4]
LDRSB           R0, [R4]
POP             {R4,PC}
