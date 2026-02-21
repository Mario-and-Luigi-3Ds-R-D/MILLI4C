PUSH            {R4-R8,LR}
ADD             R4, R0, #0x490
MOV             R3, #1
LDR             R1, =off_6BB99C
LDR             R7, =off_6B7BEC
MOV             R2, #0x1C
STR             R1, [R0]
STR             R7, [R0,#0x490]!
LDR             R1, =nullsub_300
ADD             R0, R0, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R4, R0, #0x24 ; '$'
LDR             R0, [R0,#-0x1C]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_225C3C
LDR             R6, [R4]
CMP             R6, #0
BEQ             loc_225C3C
LDR             R0, =off_6CDA80
LDR             R0, [R0]
ADD             R5, R0, #0x12800
LDR             R0, [R6]
ADD             R5, R5, #0x10C
LDR             R1, [R0]
MOV             R0, R6
BLX             R1
LDR             R0, [R5,#4]
STR             R0, [R6]
STR             R6, [R5,#4]
LDR             R0, [R5,#8]
ADD             R0, R0, #1
STR             R0, [R5,#8]
ADD             R1, R4, #4
MOV             R3, #1
LDRD            R0, R1, [R1]
MOV             R2, #0x1C
STR             R1, [R0,#4]
STR             R0, [R1]
STR             R7, [R4,#-0x34]!
LDR             R1, =nullsub_300
ADD             R0, R4, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
STR             R7, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x3FC
NOP
BL              sub_14F3EC
POP             {R4-R8,LR}
SUB             R0, R0, #8
B               sub_300FD4
