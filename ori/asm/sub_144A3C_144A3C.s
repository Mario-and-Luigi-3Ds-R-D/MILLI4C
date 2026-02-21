PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =dword_6E2378
LDRB            R0, [R0,#(byte_6E238B - 0x6E2378)]
CMP             R0, #1
BEQ             loc_144AE0
LDR             R6, =off_6CE970
MOV             R3, #0x10000
MOV             R2, #0
LDR             R0, [R6]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x208
BL              sub_10A358
CMP             R0, #0
BEQ             locret_144ADC
MOV             R5, #0
LDR             R1, =off_6BE614
STRB            R5, [R0,#4]
STRB            R5, [R0,#5]
STRH            R5, [R0,#6]
STR             R1, [R0],#8
BL              sub_14CB8C
LDR             R1, =off_6C3078
MOV             R2, R4
STR             R1, [R0]
STR             R5, [R0,#0x100]
STRB            R5, [R0,#0xF2]
LDR             R1, [R6]
ADD             R0, R0, #0x104
ADD             R1, R1, #0x68 ; 'h'
BL              sub_3C0D58
SUB             R4, R0, #0x10C
BL              sub_3C0C40
STR             R5, [R4,#0x108]
LDR             R1, [R4,#0x14]
ADD             R0, R4, #8
CMP             R1, #0
MOVEQ           R1, #0
BLEQ            sub_14C3E8
MOV             R0, R4
POP             {R4-R6,PC}
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_148B08
