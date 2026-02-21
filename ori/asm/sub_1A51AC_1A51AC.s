PUSH            {R4-R6,LR}
ADD             R4, R0, #0x18
LDR             R0, [R0,#0x20]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_1A5220
LDR             R5, [R4]
CMP             R5, #0
BEQ             loc_1A5220
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_1A51F8
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x3AC]
SXTH            R1, R0
LDR             R0, [R5,#4]
BL              sub_1586A8
LDR             R0, =off_6C0770
STR             R0, [R5]
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_1A5218
MOV             R1, #0
STR             R1, [R0,#0x64]
STR             R1, [R5,#4]
MOV             R0, R5
BL              sub_300FD4
ADD             R1, R4, #4
SUB             R4, R4, #0x18
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, R4
BL              sub_61E634
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_1A5264
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1A5264
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
STR             R0, [R1,#4]
STR             R1, [R0]
MOV             R0, R4
POP             {R4-R6,PC}
