PUSH            {R3-R9,LR}
MOV             R5, R0
MOV             R9, R1
LDR             R0, =off_6D48F8
LDR             R4, [R0]
BL              sub_126B44
MOV             R7, R0
LDRD            R0, R1, [R4,#4]
BIC             R5, R5, R1
AND             R1, R5, #0x2000
TST             R0, R1
BLNE            sub_131430
TST             R5, #0x80
MOV             R8, #0
BEQ             loc_12704C
MOV             R0, #0x1C00
STR             R0, [SP,#0x20+var_20]
LDR             R0, [R4]
TST             R0, #0x1C00
MOVNE           R0, SP
BLNE            sub_130EE4
TST             R5, #0x100
MOV             R6, #1
BEQ             loc_12706C
STR             R6, [SP,#0x20+var_20]
LDR             R0, [R4]
TST             R0, #1
MOVNE           R0, SP
BLNE            sub_12CD90
TST             R5, #0x200
BEQ             loc_127090
LDR             R0, =dword_6D2424
LDR             R1, [R4]
LDR             R0, [R0]
LDR             R0, [R0,#8]
TST             R0, R1
MOVNE           R0, R4
BLNE            sub_13105C
LDR             R0, =0x1E7F
TST             R0, R5
BEQ             loc_1270BC
CMP             R9, #0
STRB            R6, [R4,#0x18]
MOV             R1, R5
MOV             R0, R4
STRBEQ          R6, [R4,#0x19]
BL              sub_12D258
STRB            R8, [R4,#0x18]
STRB            R8, [R4,#0x19]
TST             R5, #1
BEQ             loc_1270D0
LDR             R0, [R4]
BIC             R0, R0, #0x100000
STR             R0, [R4]
TST             R5, #4
BEQ             loc_1270E4
LDR             R0, [R4]
BIC             R0, R0, #0x1800000
STR             R0, [R4]
TST             R5, #8
BEQ             loc_1270F8
LDR             R0, [R4]
BIC             R0, R0, #0x600000
STR             R0, [R4]
TST             R5, #0x10
BEQ             loc_12710C
LDR             R0, [R4]
BIC             R0, R0, #0x10000
STR             R0, [R4]
TST             R5, #0x20
BEQ             loc_127120
LDR             R0, [R4]
BIC             R0, R0, #0x80000
STR             R0, [R4]
TST             R5, #0x40
BEQ             loc_127138
LDR             R0, [R4]
LDR             R1, =0x2004038
BIC             R0, R0, R1
STR             R0, [R4]
TST             R5, #0x80
BEQ             loc_12714C
LDR             R0, [R4]
BIC             R0, R0, #0x1C00
STR             R0, [R4]
TST             R5, #0x100
BEQ             loc_127160
LDR             R0, [R4]
BIC             R0, R0, #1
STR             R0, [R4]
TST             R5, #0x200
BEQ             loc_127178
LDR             R0, [R4]
BIC             R0, R0, #0x8000
BIC             R0, R0, #0xC2
STR             R0, [R4]
TST             R5, #0x400
BEQ             loc_12718C
LDR             R0, [R4]
BIC             R0, R0, #4
STR             R0, [R4]
TST             R5, #0x800
BEQ             loc_1271A0
LDR             R0, [R4]
BIC             R0, R0, #0x100
STR             R0, [R4]
TST             R5, #0x1000
BEQ             loc_1271B4
LDR             R0, [R4]
BIC             R0, R0, #0x200
STR             R0, [R4]
LDR             R0, [R4,#4]
CMP             R7, #0
BIC             R0, R0, R5
STR             R0, [R4,#4]
BL              sub_126B44
POP             {R3-R9,PC}
