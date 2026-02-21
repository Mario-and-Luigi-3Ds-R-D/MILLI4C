PUSH            {R4-R6,LR}
ADD             R5, R0, #0x12000
ADD             R5, R5, #0x7E0
MOV             R4, R0
LDR             R0, [R5]
LDR             R3, [SP,#0x10+arg_0]
MOV             R6, R1
CMP             R0, #0
BEQ             locret_295064
BL              sub_296B84
ADD             R0, R4, #0x12C00
ADD             R0, R0, #0x18
LDR             R1, [R0]
ADD             R1, R1, R6
STR             R1, [R0]
LDR             R0, [R5]
LDR             R0, [R0]
SUB             R1, R0, #0x300
SUBS            R1, R1, #0xE7
BNE             locret_295064
LDR             R0, =0x12C10
LDRB            R0, [R0,R4]
CMP             R0, #0
BNE             locret_295064
LDR             R0, =0x12C10
MOV             R2, #1
ADD             R1, R0, #0xC
STRB            R2, [R0,R4]
LDRB            R0, [R1,R4]
CMP             R0, #2
BEQ             locret_295064
LDR             R0, =0x12804
LDR             R0, [R0,R4]
BL              sub_284B64
LDR             R0, [R4,#8]
BL              sub_28E95C
LDR             R0, [R4,#0x4C]
BL              sub_5CDB58
CMP             R0, #0
BNE             locret_295064
LDR             R0, [R4,#0x4C]
POP             {R4-R6,LR}
B               sub_287294
POP             {R4-R6,PC}
