LDR             R1, =off_6BBEB4
PUSH            {R3-R7,LR}
MOV             R2, #0
ADD             R7, R0, #0x100
STR             R1, [R0]
LDR             R1, [R0,#4]
STR             R2, [R1,#0x71C]
LDR             R6, [R0,#0x100]!
LDR             R5, [R0,#4]
CMP             R6, R5
BEQ             loc_26BA64
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_26BA50
LDR             R1, [R4]
CMP             R1, #0
MOVNE           R0, SP
BLNE            sub_5CC87C
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_26BA28
LDR             R0, [R7,#-0xF4]
SUB             R1, R7, #0xF8
SUB             R5, R7, #0x100
CMP             R0, R1
SUB             R4, R7, #0xFC
BNE             loc_26BA94
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_26BA94
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, R5
POP             {R3-R7,LR}
B               sub_300FD4
