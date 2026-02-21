PUSH            {R3-R5,LR}
MOV             R4, R0
MOV             R0, #0xA
STRB            R0, [R4,#0xD]
LDR             R5, =off_6CDC90
LDRB            R0, [R4,#0xC]
MOV             R2, #0
CMP             R0, #0
LDR             R0, [R5]
LDREQ           R1, [R0,#0x24]
LDRNE           R1, [R0,#0x20]
ADD             R0, R4, #0x10
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x15
ADD             R0, R4, #0x10
BL              sub_14C548
LDR             R0, [R5]
LDR             R1, =0x12700
VLDR            S0, =0.0
MOV             R2, #0xFFFFFF00
LDR             R1, [R1,R0]
REV             R2, R2
LDR             R1, [R1,#0x238]
STR             R1, [SP,#0x10+var_10]
VSTR            S0, [R4,#0x3AC]
STR             R1, [R4,#0x3B0]
LDRB            R1, [R4,#0xC]
VLDR            S0, =4.0
STR             R2, [SP,#0x10+var_10]
CMP             R1, #0
ADDEQ           R0, R0, #0x12400
ADDEQ           R0, R0, #0x398
ADDNE           R0, R0, #0x12800
ADDNE           R0, R0, #0x38C
MOV             R1, SP
ADD             R0, R0, #0x32C
BL              sub_4E665C
POP             {R3-R5,PC}
