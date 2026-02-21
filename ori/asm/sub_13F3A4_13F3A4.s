PUSH            {R4-R8,LR}
MOV             R5, R0
BL              sub_13F210
MOV             R7, R0
BL              sub_13273C
ADD             R4, R5, #0x2C4
MOV             R8, #0
ADD             R6, R5, #0x2D4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_13F400
LDR             R1, [R5,#8]
CMP             R1, #0
BEQ             loc_13F3F4
LDR             R1, [R1,#0x10]
CMP             R1, #0x12C
SUBNE           R1, R1, #0x100
SUBSNE          R1, R1, #0x2D ; '-'
CMPNE           R1, #1
BEQ             loc_13F464
MOV             R1, #1
BL              sub_13FC5C
STR             R8, [R4]
ADD             R4, R4, #4
CMP             R4, R6
BNE             loc_13F3C4
ADD             R0, R5, #0x400
ADD             R1, R5, #0x400
ADD             R0, R0, #0x14
MOV             R2, #0xFFFFFFFF
ADD             R1, R1, #0x34 ; '4'
STRB            R2, [R0,#7]
ADD             R0, R0, #8
CMP             R0, R1
BNE             loc_13F420
LDR             R0, [R5,#8]
STR             R8, [R5,#0x474]
CMP             R0, #0
BEQ             loc_13F548
LDR             R1, [R0,#0x10]
CMP             R1, #0x12C
BEQ             loc_13F53C
BGT             loc_13F478
CMP             R1, #0x64 ; 'd'
BEQ             loc_13F48C
CMP             R1, #0xC8
BNE             loc_13F548
B               loc_13F4E4
MOV             R1, #1
BL              sub_13FCDC
NOP
NOP
B               loc_13F3FC
SUB             R1, R1, #0x100
SUBS            R1, R1, #0x2D ; '-'
CMPNE           R1, #1
BNE             loc_13F548
B               loc_13F53C
LDR             R4, [R5,#0x40]
BL              sub_140234
MOV             R6, R0
LDRH            R0, [R4,#4]
LDR             R2, [R5,#0x248]
CMP             R0, R2
BEQ             loc_13F4B8
MOV             R3, #1
MOV             R1, #0
MOV             R0, R6
BL              sub_141654
LDRH            R2, [R4,#4]
MOV             R3, #1
MOV             R1, #0
MOV             R0, R6
BL              sub_141654
LDR             R1, [R5,#8]
MOV             R0, R6
BL              sub_1415B8
NOP
NOP
B               loc_13F548
LDR             R4, [R5,#0x40]
BL              sub_140234
MOV             R6, R0
LDRH            R0, [R4,#2]
LDR             R2, [R5,#0x248]
CMP             R0, R2
BEQ             loc_13F510
MOV             R3, #1
MOV             R1, #0
MOV             R0, R6
BL              sub_141654
LDRH            R2, [R4,#2]
MOV             R3, #1
MOV             R1, #0
MOV             R0, R6
BL              sub_141654
LDR             R1, [R5,#8]
MOV             R0, R6
BL              sub_1415B8
NOP
NOP
B               loc_13F548
NOP
BL              sub_1361A4
STR             R8, [R5,#8]
LDR             R0, [R5,#4]
STR             R8, [R0]
STR             R8, [R5,#0xC]
MOV             R0, R7
STR             R8, [R5,#0x14]
POP             {R4-R8,LR}
B               sub_1327BC
