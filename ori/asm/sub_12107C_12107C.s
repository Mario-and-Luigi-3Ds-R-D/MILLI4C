LDR             R2, =0x1FF80000
LDR             R3, =byte_6D305C
PUSH            {R4,LR}
TST             R0, #0x80000000
LDRB            R2, [R2,#0x14]
LDRSB           R3, [R3]
MOV             R1, R0,LSR#27
SUBNE           R1, R1, #0x20 ; ' '
AND             R2, R2, #1
ORRS            R2, R2, R3
BEQ             loc_1210C4
CMN             R1, #7
CMPNE           R1, #1
BEQ             locret_1210E0
LDR             R2, [SP,#8+var_4]
POP             {R4,LR}
MOV             R1, #0
B               sub_1194E8
CMN             R1, #1
BNE             loc_1210D8
LDR             R2, [SP,#8+var_4]
MOV             R1, #0
BL              sub_1194E8
POP             {R4,LR}
B               sub_128434
POP             {R4,PC}
