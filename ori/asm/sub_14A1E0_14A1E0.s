LDR             R1, =off_6BB354
PUSH            {R4-R6,LR}
MOV             R4, R0
STR             R1, [R0]
LDR             R1, [R0,#0x10]
LDR             R0, =dword_64E930
CMP             R1, #0
LDREQ           R1, [R0,#(dword_64E940 - 0x64E930)]
LDREQ           R0, [R0,#(off_64E944 - 0x64E930)]
LDRNE           R1, [R0,#0x18]
LDRNE           R0, [R0,#0x1C]
CMP             R1, #0
BNE             loc_14A224
TST             R0, #1
BEQ             loc_14A22C
CMP             R0, #0
BEQ             loc_14A22C
LDR             R0, [R4,#0x10]
BL              sub_5663D8
LDR             R0, [R4,#0x18]
ADD             R1, R4, #0x14
ADD             R5, R4, #0x10
CMP             R0, R1
BNE             loc_14A258
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_14A258
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R5,#4]
ADD             R5, R4, #4
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0xC]
ADD             R1, R4, #8
CMP             R0, R1
BNE             loc_14A294
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_14A294
BL              sub_547BD4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_300FD4
