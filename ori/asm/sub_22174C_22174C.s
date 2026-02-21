PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R1, [R1]
LDR             R5, [R0,#0x34]
CMP             R1, #0
BEQ             locret_2217C4
LDRB            R0, [R5,#0x20]
CMP             R0, #0
LDRNE           R0, [R1,#8]
BLNE            sub_595924
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0]
LDR             R0, [R0,#4]
STR             R2, [R0]
LDR             R0, [R4]
LDM             R0, {R0,R2}
STR             R2, [R0,#4]
LDR             R0, [R5,#4]
LDR             R2, [R4]
LDR             R3, [R0]
STR             R3, [R2]
LDR             R3, [R0]
LDR             R2, [R4]
STR             R2, [R3,#4]
LDR             R2, [R4]
STR             R0, [R2,#4]
LDR             R2, [R4]
STR             R2, [R0]
STR             R1, [R4]
POP             {R4-R6,PC}
