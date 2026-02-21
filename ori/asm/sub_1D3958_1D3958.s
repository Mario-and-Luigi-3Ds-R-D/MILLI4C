PUSH            {R4-R8,LR}
MOV             R6, R0
LDR             R0, =0x1064C4
LDR             R0, [R6,R0]
CMP             R0, #0
BEQ             locret_1D3A80
LDR             R0, =off_10648C
MOV             R5, #0
STR             R5, [R6,R0]
LDR             R0, =word_19CF3E
LDRH            R1, [R0,R6]
MOV             R0, R6
BL              sub_52F368
MOV             R7, R0
MOV             R1, R0
MOV             R0, R6
BL              sub_52FB58
MOV             R3, #0
MOV             R2, R3
ADD             R1, R6, #0x68 ; 'h'
MOV             R0, #0x10
BL              sub_10A358
CMP             R0, #0
BEQ             loc_1D39F4
MOV             R1, #1
STRB            R1, [R0,#4]
LDR             R1, =off_654500
STRB            R5, [R0,#5]
STRH            R5, [R0,#6]
STR             R1, [R0]
STR             R7, [R0,#8]
MOV             R4, R0
STRB            R5, [R0,#0xC]
LDR             R0, =off_6CE970
LDR             R1, =unk_653FC2
MOV             R2, #1
LDR             R0, [R0]
BL              sub_529204
MOV             R0, R4
STR             R0, [R7,#0x140]
LDR             R0, =loc_19CF44
ADD             R0, R0, R6
LDR             R1, [R0]
ORR             R1, R1, #8
STR             R1, [R0]
LDR             R0, =0x10646C
ADD             R0, R0, R6
LDR             R0, [R0,#4]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
BEQ             loc_1D3A68
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_1D3A5C
CMP             R4, #0
MOVEQ           R0, #0
SUBNE           R0, R4, #0x1AC
BL              sub_4FEAB8
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_1D3A30
LDR             R2, =off_654054
ADD             R0, R6, #0x1A0000
ADD             R0, R0, #0x5C ; '\'
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
MOV             R0, #1
POP             {R4-R8,PC}
