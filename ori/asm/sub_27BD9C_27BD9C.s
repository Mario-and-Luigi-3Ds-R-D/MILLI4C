PUSH            {R4-R10,LR}
MOV             R6, R0
MOV             R9, #0
LDR             R0, =off_6BC228
STR             R0, [R6]
LDR             R0, [R6,#0x124]
CMP             R0, #0
BEQ             loc_27BDC4
BL              sub_300FD4
STR             R9, [R6,#0x124]
LDR             R0, [R6,#0x100]
CMP             R0, #0
BEQ             loc_27BDE4
ADD             R0, R0, #0x21C00
ADD             R0, R0, #0x248
LDR             R1, =dword_6E2378
LDR             R0, [R0]
STRH            R0, [R1,#(word_6E23A4 - 0x6E2378)]
LDR             R1, [R6,#0x114]
ADD             R0, R6, #0x110
MOV             R8, #0
CMP             R1, R0
ADD             R7, R6, #0x10C
BNE             loc_27C198
LDR             R4, [R7]
CMP             R4, #0
BEQ             loc_27BE8C
MOV             R5, R4
LDR             R0, [R4,#4]!
CMP             R0, #0
BEQ             loc_27BE24
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R4,#8]
ADD             R2, R4, #4
CMP             R1, R2
BNE             loc_27BE50
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27BE70
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_27BE70
ADD             R0, R4, #4
CMP             R1, R0
BEQ             loc_27BE70
LDR             R2, [R0]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R0]
STR             R0, [R0,#4]
STR             R9, [R4]
LDR             R1, [R4,#4]!
LDR             R0, [R4,#4]
STR             R0, [R1,#4]
STR             R1, [R0]
MOV             R0, R5
BL              sub_300FD4
STR             R8, [R7]
LDR             R1, [R6,#0x108]
ADD             R0, R6, #0x104
MOV             R5, #0
CMP             R1, R0
ADD             R4, R6, #0x100
BNE             loc_27C1B4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27BEC4
BL              sub_2805A8
NOP
NOP
BL              sub_300FD4
STR             R5, [R4]
LDR             R1, [R6,#0xCC]
ADD             R0, R6, #0xC8
MOV             R5, #0
CMP             R1, R0
ADD             R4, R6, #0xC4
BNE             loc_27C1D0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27BEFC
BL              sub_26CCDC
NOP
NOP
BL              sub_300FD4
STR             R5, [R4]
LDR             R0, [R6,#0xD8]
ADD             R1, R6, #0xD4
MOV             R5, #0
CMP             R0, R1
ADD             R4, R6, #0xD0
BNE             loc_27C1EC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27BF30
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
ADD             R8, R6, #0x12800
ADD             R8, R8, #0x14
STR             R5, [R4]
LDR             R5, [R8,#0x16C]
LDR             R7, [R8,#0x168]
CMP             R7, R5
BEQ             loc_27BF90
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_27BF7C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27BF7C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_27BF4C
LDR             R0, [R8,#0x168]
STR             R0, [R8,#0x16C]
LDR             R5, [R6,#0xC0]
LDR             R7, [R6,#0xBC]
CMP             R7, R5
BEQ             loc_27BFEC
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_27BFD8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27BFD8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_27BFA8
LDR             R0, [R6,#0xBC]
STR             R0, [R6,#0xC0]
ADD             R0, R6, #0x12800
ADD             R0, R0, #0x194
BL              sub_14F3EC
SUB             R7, R0, #0x18
LDR             R5, [R0,#-0x14]!
LDR             R6, [R0,#-4]
CMP             R6, R5
BEQ             loc_27C058
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_27C044
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27C044
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_27C014
LDRB            R0, [R7,#-0x16C]
SUB             R6, R7, #0x17C
CMP             R0, #0
LDRNE           R0, [R6]
CMPNE           R0, #0
BEQ             loc_27C078
BL              sub_110D10
STR             R9, [R6]
LDR             R5, [R6,#-0x14]!
LDR             R0, [R5,#8]
CMP             R0, R5
BEQ             loc_27C0C4
ADD             R1, R0, #4
LDM             R1, {R1,R2}
MOV             R4, R1
STR             R1, [R2,#4]
ADD             R1, R0, #4
LDM             R1, {R1,R2}
STR             R2, [R1,#8]
STR             R9, [R0,#8]
STR             R9, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R4,#8]
CMP             R0, R5
BNE             loc_27C088
SUB             R0, R6, #0x12400
SUB             R0, R0, #0x2C4
BL              sub_280DB0
SUB             R4, R0, #0x10
LDR             R0, [R0,#-8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_27C120
LDR             R1, [R4]
CMP             R1, #0
BEQ             loc_27C120
LDR             R2, =off_6C075C
ADD             R0, R1, #0x410
STR             R2, [R1,#0x410]
LDR             R2, [R1,#0x414]
CMP             R2, #0
STRNE           R9, [R2,#0x184]
STRNE           R9, [R0,#4]
ADD             R0, R1, #4
BL              sub_14F3EC
SUB             R0, R0, #4
NOP
BL              sub_300FD4
ADD             R1, R4, #4
SUB             R4, R4, #0xC
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_27C240
LDR             R5, [R4]
CMP             R5, #0
BEQ             loc_27C240
MOV             R6, R5
LDR             R0, [R5,#4]!
CMP             R0, #0
BEQ             loc_27C16C
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R5,#8]
ADD             R2, R5, #4
CMP             R1, R2
BNE             loc_27C208
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_27C228
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_27C228
LDR             R2, [R7,#4]
ADD             R0, R7, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R7,#4]
STR             R0, [R7,#8]
B               loc_27BE8C
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_27BEC4
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_27BEFC
LDR             R2, [R4,#4]
ADD             R1, R4, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R4,#4]
STR             R1, [R4,#8]
B               loc_27BF30
ADD             R0, R5, #4
CMP             R1, R0
BEQ             loc_27C228
LDR             R2, [R0]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R0]
STR             R0, [R0,#4]
STR             R9, [R5]
LDRD            R0, R1, [R5,#4]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, R6
BL              sub_300FD4
ADD             R1, R4, #4
SUB             R4, R4, #0xC
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_27C280
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27C280
BL              sub_2805A8
NOP
NOP
BL              sub_300FD4
ADD             R1, R4, #4
SUB             R4, R4, #0x14
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
LDRB            R0, [R4,#0x10]
CMP             R0, #0
LDRNE           R0, [R4]
CMPNE           R0, #0
BEQ             loc_27C2B0
BL              sub_110D10
STR             R9, [R4]
LDR             R0, [R4,#-0x10]!
CMP             R0, #0
BEQ             loc_27C2C8
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R4,#8]
ADD             R2, R4, #4
CMP             R0, R2
BNE             loc_27C3DC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27C2F0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R9, [R4]
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
SUB             R5, R4, #0xDC
SUB             R4, R4, #0xC
STR             R0, [R1,#4]
STR             R1, [R0]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_27C334
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27C334
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
ADD             R4, R5, #0xC4
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R5,#0xCC]
ADD             R1, R5, #0xC8
CMP             R0, R1
BNE             loc_27C370
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27C370
BL              sub_26CCDC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
ADD             R7, R5, #0xBC
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R6, [R5,#0xBC]
LDR             R5, [R5,#0xC0]
CMP             R6, R5
BEQ             loc_27C3D4
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_27C3C0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27C3C0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_27C390
SUB             R0, R7, #0xBC
POP             {R4-R10,PC}
LDR             R2, [R4,#4]
ADD             R1, R4, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R4,#4]
STR             R1, [R4,#8]
B               loc_27C2F0
