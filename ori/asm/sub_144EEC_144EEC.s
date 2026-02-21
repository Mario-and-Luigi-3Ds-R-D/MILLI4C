PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R6, =off_6CE970
SUB             SP, SP, #0x10
MOV             R3, #0x10000
MOV             R2, #0
LDR             R0, [R6]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x18
BL              sub_10A358
CMP             R0, #0
BEQ             loc_144FA0
MOV             R4, R0
MOV             R0, #1
STRB            R0, [R4,#4]
LDR             R0, =off_6B6A74
MOV             R1, #0
STRB            R1, [R4,#5]
STRH            R1, [R4,#6]
STR             R0, [R4]
STR             R5, [R4,#8]
STRB            R1, [R4,#0xC]
STR             R1, [R4,#0x14]
LDR             R1, =off_6B2A84
MOV             R0, SP
MOV             R2, #1
STR             R1, [R4,#0x10]
MOV             R1, #6
BL              sub_1CCBB4
LDR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, SP
ADD             R0, R0, #0x40 ; '@'
BL              sub_1CE4EC
LDR             R0, [R4,#8]
BL              sub_1466EC
LDR             R1, [R4,#8]
STR             R0, [R1,#0x13C]
LDR             R0, =0x19CF48
LDR             R1, [R6]
ADD             R0, R0, R1; loc_19CF48
LDR             R1, [R0]
ORR             R1, R1, #4
STR             R1, [R0]
MOV             R0, R4
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
