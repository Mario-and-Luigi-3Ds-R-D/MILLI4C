PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R3, #0x10000
LDR             R0, =off_6CE970
MOV             R2, #0
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x30 ; '0'
BL              sub_10A358
CMP             R0, #0
BEQ             locret_1451E8
MOV             R5, #1
LDR             R1, =off_6ACE94
MOV             R7, #0
STRB            R5, [R0,#4]
LDR             R2, =unk_63E908
STRB            R7, [R0,#5]
STRH            R7, [R0,#6]
STR             R1, [R0]
STR             R6, [R0,#8]
LDM             R2, {R1,R2}
MOV             R4, R0
STR             R1, [R0,#0xC]
STR             R2, [R0,#0x10]
BL              sub_4635D8
LDM             R0, {R1-R3}
ADD             R0, R4, #0x14
STM             R0, {R1,R2}
ADD             R0, R4, #0x28 ; '('
LDR             R1, =off_6B2A84
STR             R3, [R4,#0x1C]
STRB            R5, [R4,#0x20]
STRB            R7, [R4,#0x24]
STM             R0, {R1,R7}
MOV             R0, R4
BL              sub_150058
MOV             R0, R4
POP             {R4-R8,PC}
