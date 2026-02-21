MOV             R1, #1
NOP
PUSH            {R4-R6,LR}
SUB             SP, SP, #8
LDR             R6, =off_6D1648
MOV             R5, R1
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
BL              sub_5C6048
MOV             R4, R0
LDR             R0, [R6]
BL              sub_1E45C8
LDR             R1, [R0,#0x14]!
CMP             R5, #0
ORREQ           R1, R1, #2
BICNE           R1, R1, #2
STR             R1, [R0]
BEQ             loc_19B064
VLDR            S0, =1.0
VSTR            S0, [SP,#0x18+var_18]
VSTR            S0, [SP,#0x18+var_14]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ORR             R1, R4, #0xF00
ORR             R1, R1, #0xB
BL              sub_1648BC
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
MOV             R1, SP
BL              sub_1648CC
ADD             SP, SP, #8
POP             {R4-R6,PC}
VLDR            S0, =0.0
VSTR            S0, [SP,#0x18+var_18]
VSTR            S0, [SP,#0x18+var_14]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
BIC             R1, R4, #0xF00
BIC             R1, R1, #0xB
BL              sub_1648BC
LDR             R0, [R6]
NOP
LDR             R0, [R0,#0xBC]
MOV             R1, SP
NOP
BL              sub_1648CC
ADD             SP, SP, #8
POP             {R4-R6,PC}
