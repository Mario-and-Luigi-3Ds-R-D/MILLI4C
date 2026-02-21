PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R6, #0
LDR             R0, =dword_6E2378
LDR             R7, =off_6CE970
LDR             R4, =off_6C3078
MOV             R3, #0x10000
LDRB            R1, [R0,#(byte_6E238B - 0x6E2378)]
LDR             R0, [R7]
MOV             R2, R6
CMP             R1, #1
ADD             R1, R0, #0x68 ; 'h'
BEQ             loc_143B38
LDR             R0, =0x1EAC
BL              sub_10A358
CMP             R0, #0
BEQ             locret_143BD4
MOV             R1, #0
STRB            R1, [R0,#4]
LDR             R1, =off_6BE374
STRB            R6, [R0,#5]
STRH            R6, [R0,#6]
STR             R1, [R0],#8
BL              sub_14CB8C
STR             R4, [R0]
STR             R6, [R0,#0x100]
STRB            R6, [R0,#0xF2]
ADD             R0, R0, #0x104
BL              sub_3B4E6C
SUB             R4, R0, #0x10C
STR             R6, [R0,#-4]!
SUB             R0, R0, #0x100
LDR             R1, [R0,#0xC]
CMP             R1, #0
MOVEQ           R1, #0
BLEQ            sub_14C3E8
LDR             R2, [R7]
ADD             R1, R4, #0x170
LDR             R3, =0x1DCC
ADD             R6, R4, #0x168
STR             R1, [R4,#0x354]
ADD             R2, R2, #0x68 ; 'h'
STR             R1, [R4,#0x4B0]
STM             R6, {R2,R5}
ADD             R0, R4, #0x10C
STR             R1, [R3,R4]
BL              sub_3B4DE4
B               loc_143BD0
LDR             R0, =0x36BC0
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             locret_143BD4
MOV             R1, #0
STRB            R1, [R0,#4]
LDR             R1, =off_6BF160
STRB            R6, [R0,#5]
STRH            R6, [R0,#6]
STR             R1, [R0],#8
BL              sub_14CB8C
STR             R4, [R0]
STR             R6, [R0,#0x100]
STRB            R6, [R0,#0xF2]
ADD             R0, R0, #0x104
BL              sub_418798
SUB             R4, R0, #0x10C
STR             R6, [R0,#-4]!
SUB             R0, R0, #0x100
LDR             R1, [R0,#0xC]
CMP             R1, #0
MOVEQ           R1, #0
BLEQ            sub_14C3E8
LDR             R6, [R7]
LDR             R2, =0x12928
LDR             R12, =0x36AE0
ADD             R6, R6, #0x68 ; 'h'
STR             R5, [R4,#0x16C]
ADD             R3, R2, #0xC0
ADD             R0, R4, #0x170
STR             R6, [R4,#0x168]
STR             R0, [R2,R4]
STR             R0, [R3,R4]
ADD             R1, R4, #0x10C
STR             R0, [R12,R4]
MOV             R0, R1
BL              sub_418708
MOV             R0, R4
POP             {R4-R8,PC}
