PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R3, #0x10000
LDR             R6, =off_6CE970
MOV             R2, #0
LDR             R0, [R6]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x1594
BL              sub_10A358
CMP             R0, #0
BEQ             locret_144A28
MOV             R7, #0
LDR             R1, =off_6BD8FC
STRB            R7, [R0,#4]
STRB            R7, [R0,#5]
STRH            R7, [R0,#6]
STR             R1, [R0],#8
BL              sub_14CB8C
LDR             R1, =off_6C3078
STR             R1, [R0]
STR             R7, [R0,#0x100]
STRB            R7, [R0,#0xF2]
ADD             R0, R0, #0x104
BL              sub_3741F0
SUB             R4, R0, #0x10C
STR             R7, [R0,#-4]!
SUB             R0, R0, #0x100
LDR             R1, [R0,#0xC]
CMP             R1, #0
MOVEQ           R1, #0
BLEQ            sub_14C3E8
LDR             R1, [R6]
ADD             R0, R4, #0x168
ADD             R1, R1, #0x68 ; 'h'
STM             R0, {R1,R5}
ADD             R1, R4, #0x10C0
ADD             R0, R4, #0x170
STR             R0, [R1,#0x5C]
STR             R0, [R1,#0x20C]
STR             R1, [R1,#0x208]
STR             R0, [R1,#0x258]
STR             R1, [R1,#0x254]
ADD             R1, R4, #0x1000
ADD             R1, R1, #0x10C
STR             R0, [R1,#0x238]
STR             R0, [R1,#0x3A8]
ADD             R0, R4, #0x10C
BL              sub_374138
MOV             R0, R4
POP             {R4-R8,PC}
