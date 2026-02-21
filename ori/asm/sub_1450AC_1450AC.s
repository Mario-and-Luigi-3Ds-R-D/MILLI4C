PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, =off_6CE970
MOV             R3, #0x10000
MOV             R2, #0
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x30 ; '0'
BL              sub_10A358
CMP             R0, #0
BEQ             locret_145140
MOV             R1, #1
STRB            R1, [R0,#4]
LDR             R1, =off_6ACE94
MOV             R6, #0
LDR             R2, =unk_63E908
STRB            R6, [R0,#5]
STRH            R6, [R0,#6]
STR             R1, [R0]
STR             R5, [R0,#8]
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
STRB            R6, [R4,#0x20]
STRB            R6, [R4,#0x24]
STM             R0, {R1,R6}
MOV             R0, R4
BL              sub_150058
MOV             R0, R4
POP             {R4-R6,PC}
