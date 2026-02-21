PUSH            {R4-R8,LR}
LDR             R7, =dword_6EF02C
LDR             R0, [R7]
CMP             R0, #0
BEQ             locret_105208
LDRH            R0, [R7,#(word_6EF038 - 0x6EF02C)]
MOV             R8, #0
CMP             R0, #0
BEQ             loc_1051F0
LDR             R0, [R7,#(dword_6EF034 - 0x6EF02C)]
LDR             R5, [R7,#(dword_6EF030 - 0x6EF02C)]
SUB             R4, R0, #8
CMP             R5, R4
BHI             loc_1051E8
LDR             R6, [R4]
CMP             R6, #0
BEQ             loc_1051DC
LDR             R0, [R4,#4]
CMP             R0, #0x81000000
BEQ             loc_10518C
CMP             R0, #0x82000000
BNE             loc_1051DC
B               loc_1051B8
LDR             R0, [R6,#4]
BICS            R1, R0, #1
BEQ             loc_1051DC
TST             R0, #1
BLNE            sub_128434
LDR             R0, [R6,#4]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R8, [R6,#4]
NOP
B               loc_1051DC
LDR             R0, [R6,#8]
BICS            R1, R0, #1
BEQ             loc_1051DC
TST             R0, #1
BLNE            sub_128434
LDR             R0, [R6,#8]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R8, [R6,#8]
SUB             R4, R4, #8
CMP             R5, R4
BLS             loc_105168
LDR             R0, [R7,#(dword_6EF030 - 0x6EF02C)]
BL              sub_110D10
LDR             R0, =aRom_3; "rom:"
BL              sub_107210
LDR             R0, [R7]
NOP
BL              sub_110D10
STR             R8, [R7]
POP             {R4-R8,PC}
