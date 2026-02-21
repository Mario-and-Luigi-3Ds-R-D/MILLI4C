ADD             R1, R0, #0x600
PUSH            {R4-R6,LR}
MOV             R4, R0
LDRSB           R1, [R1,#0x5E]
LDR             R5, [R4,#0x608]
MOV             R0, #0
CMN             R1, #1
STRNE           R0, [R4,#0x608]
LDRB            R1, [R4,#0xDE]
TST             R1, #1
STREQ           R0, [R4,#0x608]
MOV             R0, R4
BL              sub_57C848
STR             R5, [R4,#0x608]
POP             {R4-R6,PC}
