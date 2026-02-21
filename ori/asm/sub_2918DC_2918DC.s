PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
LDR             R1, =0x12C10
LDR             R0, [R0,#4]
LDRB            R1, [R1,R0]
CMP             R1, #0
BEQ             loc_291920
LDR             R1, [R0,#8]
CMP             R1, #0
LDRBNE          R1, [R1,#0xA0]
CMPNE           R1, #2
BEQ             loc_291920
LDR             R0, [R0,#0x4C]
BL              sub_5CDB58
CMP             R0, #0
BEQ             loc_291938
LDR             R0, [R4,#4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#8]
CMP             R1, #0
BNE             loc_29195C
B               loc_291948
LDR             R0, [R4,#4]
LDR             R0, [R0,#4]
POP             {R4,LR}
B               sub_292EFC
LDR             R0, [R0,#0x4C]
BL              sub_5CDB18
CMP             R0, #0
NOP
BEQ             loc_2919B4
LDR             R0, [R4,#4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x4C]
BL              sub_5CDB18
CMP             R0, #0
NOP
BEQ             loc_29198C
LDR             R0, [R4,#4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
CMP             R0, #0
BNE             locret_2919C0
LDR             R0, [R4,#4]
LDR             R1, [R0,#4]
LDR             R1, [R1,#8]
CMP             R1, #0
BEQ             loc_2919AC
LDRB            R1, [R1,#0xA0]
CMP             R1, #2
BEQ             locret_2919C0
POP             {R4,LR}
B               sub_2910DC
LDR             R0, [R4,#4]
POP             {R4,LR}
B               sub_2910DC
POP             {R4,PC}
