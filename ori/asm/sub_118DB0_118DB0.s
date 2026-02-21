PUSH            {R3-R5,LR}
MOV             R4, #0
MOV             R2, R4
MOV             R1, SP
STR             R4, [SP,#0x10+var_10]
BL              sub_121170
ANDS            R0, R0, #0x80000000
BMI             loc_118E24
LDR             R1, [SP,#0x10+var_10]
CMP             R1, #0
BEQ             loc_118E24
LDR             R0, =off_6D4B5C
LDR             R2, [R0,#(off_6D4B60 - 0x6D4B5C)]; unk_6D4B44
CMP             R1, R2
LDREQ           R2, [R1]
STREQ           R2, [R0,#(off_6D4B60 - 0x6D4B5C)]; unk_6D4B44
LDR             R0, [R1,#4]
CMP             R0, #0
LDRNE           R2, [R1]
STRNE           R2, [R0]
LDRD            R2, R3, [R1]
MOV             R0, R4
STR             R3, [R2,#4]
STR             R4, [R1,#4]
STR             R4, [R1]
LDR             R1, [SP,#0x10+var_10]
STR             R4, [R1,#8]
STR             R4, [R1,#0xC]
POP             {R3-R5,PC}
LDR             R0, =0xC9612C05
POP             {R3-R5,PC}
