PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
LDRB            R0, [R1,#0x30]
MOV             R7, R2
MOV             R6, R3
CMP             R0, #2
BNE             loc_14EF78
LDR             R0, [R4,#0x3AC]
MOV             R8, #0
CMP             R0, #0
BEQ             loc_14EF00
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R8, [R4,#0x3AC]
LDR             R0, [R4,#0x3B0]
CMP             R0, #0
BEQ             loc_14EF20
BL              sub_4FE6E4
NOP
NOP
BL              sub_300FD4
STR             R8, [R4,#0x3B0]
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#(loc_1063B8 - 0x106000)]
MOV             R0, #0xFC
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_4FE5F8
CMP             R6, #0
STR             R0, [R4,#0x3B0]
LDREQ           R6, [R5,#0x18]
MOV             R2, R5
MOV             R1, R6
BL              sub_4FD7D0
LDR             R0, [R4,#0x3B0]
MOV             R2, #1
MOV             R1, R7
BL              sub_4FE01C
MOV             R0, #1
STR             R5, [R4,#0x3B4]
POP             {R4-R8,PC}
