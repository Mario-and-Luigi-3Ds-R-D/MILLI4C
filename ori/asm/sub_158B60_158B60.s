PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R5, R1
MOV             R1, R2
LDR             R3, [R0,#0x30]
MOV             R0, R4
BLX             R3
LDR             R1, =dword_6EF02C
ADD             R0, R1, #4
LDRH            R3, [R1,#(word_6EF038 - 0x6EF02C)]
LDM             R0, {R0,R2}
ADD             R12, R0, R3,LSL#3
CMP             R12, R2
MOV             R3, #0
BLS             loc_158BB0
ADD             R12, R2, #8
MOV             R0, R2
STR             R12, [R1,#(dword_6EF034 - 0x6EF02C)]
B               loc_158BD4
CMP             R2, R0
BEQ             loc_158BE8
LDR             R1, [R0]
CMP             R1, #0
BEQ             loc_158BD4
ADD             R0, R0, #8
CMP             R2, R0
BNE             loc_158BB8
B               loc_158BE8
CMP             R0, #0
BEQ             loc_158BE8
MOV             R2, #0x81000000
STR             R2, [R0,#4]
STR             R4, [R0]
STR             R3, [R4,#0x10]
STR             R3, [R4,#0x14]
STR             R3, [R4,#8]
MOV             R1, R5
MOV             R2, #1
ADD             R0, R4, #4
STR             R3, [R4,#0xC]
BL              sub_10D7A8
MOV             R0, R0,LSR#31
EOR             R0, R0, #1
POP             {R4-R6,PC}
