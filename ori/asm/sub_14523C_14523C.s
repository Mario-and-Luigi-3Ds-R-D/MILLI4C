PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R3, #0x10000
LDR             R6, =off_6CE970
MOV             R2, #0
LDR             R0, [R6]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x9D8
BL              sub_10A358
CMP             R0, #0
BEQ             locret_1452D4
MOV             R2, #0
MOV             R1, R2
BL              sub_1DFBC4
LDR             R1, =off_6BD550
STR             R1, [R0],#0x18
BL              sub_14CB8C
LDR             R1, =off_6C3078
MOV             R7, #0
STR             R1, [R0]
STR             R7, [R0,#0x100]
STRB            R7, [R0,#0xF2]
ADD             R0, R0, #0x104
BL              sub_35622C
SUB             R4, R0, #0x11C
STR             R7, [R0,#-4]!
SUB             R0, R0, #0x100
LDR             R1, [R0,#0xC]
CMP             R1, #0
MOVEQ           R1, #0
BLEQ            sub_14C3E8
LDR             R0, [R6]
ADD             R1, R4, #0x120
ADD             R0, R0, #0x68 ; 'h'
STM             R1, {R0,R5}
ADD             R0, R4, #0x11C
BL              sub_3561D8
MOV             R0, R4
POP             {R4-R8,PC}
