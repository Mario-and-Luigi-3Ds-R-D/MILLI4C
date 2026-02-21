PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, [SP,#0x10+arg_0]
MOV             R0, R2
BL              sub_10D540
LDRB            R1, [R4,#0x1C]
MOV             R2, R0
MOV             R0, #0
CMP             R1, #0
BEQ             loc_1589EC
CMP             R1, #1
BNE             locret_1589E8
ADD             R1, R4, #0x10
SUB             R0, R2, #1
LDM             R1, {R2,R3,R12}
SUB             R4, R2, R3
ADD             R3, R12, #1
SUB             R12, R4, R5
BIC             R0, R12, R0
SUB             R2, R2, R0
STRD            R2, R3, [R1,#4]
POP             {R4-R6,PC}
ADD             R1, R4, #4
SUB             R0, R2, #1
LDM             R1, {R2,R3,R12}
ADD             R4, R2, R3
ADD             R3, R12, #1
ADD             R12, R4, R0
BIC             R0, R12, R0
STR             R3, [R1,#8]
ADD             R3, R0, R5
SUB             R2, R3, R2
STR             R2, [R1,#4]
POP             {R4-R6,PC}
