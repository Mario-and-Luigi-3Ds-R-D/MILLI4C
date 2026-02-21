PUSH            {R4,LR}
LDR             R2, [R0,#0x14]
MOV             R3, #1
MOV             R4, #0
LDR             R1, [R2,#4]
CMP             R1, R2
STRBEQ          R3, [R0,#0x38]
BEQ             loc_221D34
LDM             R1, {R2,R12}
CMP             R1, #0
STR             R2, [R12]
LDM             R1, {R2,R12}
STR             R12, [R2,#4]
LDR             R2, [R0,#0x18]
LDR             R12, [R2]
STR             R12, [R1]
LDR             R12, [R2]
STR             R1, [R12,#4]
STR             R2, [R1,#4]
STR             R1, [R2]
STRB            R3, [R0,#0x38]
BEQ             loc_221D34
LDR             R0, [R1,#8]
CMP             R0, #0
BEQ             locret_221D30
BL              sub_1170D0
STR             R4, [R0,#0x28]
POP             {R4,PC}
MOV             R0, #0
POP             {R4,PC}
