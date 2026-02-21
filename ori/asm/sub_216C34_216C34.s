PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x290]
LDR             R1, [R4,#0x284]
ADD             R6, R4, #0x200
LDR             R5, [R0,#0x228]
CMP             R5, #0
MOVEQ           R0, #1
STREQ           R1, [R4,#0x288]
BEQ             loc_216C88
LDR             R0, [R5,#0x288]
LDR             R3, =0x1869F
MOV             R2, #0
BL              sub_47FEF8
STR             R0, [R4,#0x288]
LDR             R0, =0x282
MOV             R2, #1
LDR             R3, =0x3E7
MOV             R1, R2
LDRH            R0, [R0,R5]
BL              sub_47FEF8
STRH            R0, [R6,#0x82]
LDR             R0, [R4,#0x290]
STR             R4, [R0,#0x228]
POP             {R4-R6,PC}
