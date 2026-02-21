PUSH            {R3-R7,LR}
MOV             R6, R3
LDR             R3, [SP,#0x18+arg_0]
STR             R3, [SP,#0x18+var_18]
MOV             R3, R6
BL              sub_580DD4
ADD             R0, R0, #0x400
ADD             R0, R0, #0x358
BL              sub_2FCBA4
LDR             R3, =off_6B1AD8
SUB             R5, R0, #0x400
MOV             R4, R0
ADD             R1, R3, #0x360
ADD             R2, R3, #0x378
STR             R1, [R0,#-0x678]
STR             R2, [R0]
STR             R3, [R0,#-0x758]
LDRB            R0, [R0,#0x2F4]
MOV             R7, #0
CMP             R6, #0
BIC             R0, R0, #0x3F ; '?'
STRB            R0, [R4,#0x2F4]
STRB            R7, [R4,#0x2F5]
SUB             R5, R5, #0x358
STRB            R7, [R4,#0x2F6]
BEQ             loc_1E7E44
LDR             R1, [R6,#0x14]
MOV             R2, #0x40 ; '@'
BIC             R0, R0, #0x40 ; '@'
AND             R1, R2, R1,LSR#23
ORR             R0, R0, R1
STRB            R0, [R4,#0x2F4]
MOV             R2, #0xC
MOV             R1, #0
ADD             R0, R4, #0x334
BL              sub_110BE4
STR             R7, [R4,#0x34C]
STR             R7, [R4,#0x2F8]
ADD             R0, R4, #0x334
STR             R7, [R4,#0x2FC]
STR             R7, [R4,#0x300]
LDM             R0, {R0-R2}
ADD             R4, R4, #0x340
STM             R4, {R0-R2}
MOV             R0, R5
POP             {R3-R7,PC}
