PUSH            {R4-R6,LR}
MOV             R4, R1
LDR             R0, [SP,#0x10+arg_0]
LDRB            R1, [R1,#0x2F4]
MOV             R5, #0
STRB            R5, [R4,#0x2F5]
BIC             R1, R1, #0x3F ; '?'
STRB            R5, [R4,#0x2F6]
CMP             R0, #0
STRB            R1, [R4,#0x2F4]
BEQ             loc_1E62FC
LDR             R0, [R0,#0x14]
MOV             R2, #0x40 ; '@'
BIC             R1, R1, #0x40 ; '@'
AND             R0, R2, R0,LSR#23
ORR             R0, R0, R1
STRB            R0, [R4,#0x2F4]
MOV             R2, #0xC
MOV             R1, #0
ADD             R0, R4, #0x334
BL              sub_110BE4
STR             R5, [R4,#0x34C]
STR             R5, [R4,#0x2F8]
ADD             R0, R4, #0x334
STR             R5, [R4,#0x2FC]
STR             R5, [R4,#0x300]
LDM             R0, {R0-R2}
ADD             R4, R4, #0x340
STM             R4, {R0-R2}
POP             {R4-R6,PC}
