PUSH            {R4-R6,LR}
MOV             R6, R0
MOV             R4, R1
MOV             R1, R2
ADD             R0, SP, #0x10+arg_0
MOV             R2, R3
LDM             R0, {R3,R5}
MOV             R0, R4
BL              sub_1949CC
CMP             R5, #0
BEQ             locret_174FF8
LDR             R1, [R4,#0xA4]
LDR             R3, [R6]
MOV             R0, R6
LDRB            R2, [R1,#0x6C]
LDR             R3, [R3,#0x278]
LDR             R1, [R4,#0xA8]
POP             {R4-R6,LR}
BX              R3
POP             {R4-R6,PC}
