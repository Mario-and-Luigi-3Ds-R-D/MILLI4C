PUSH            {R4-R10,LR}
ADD             R7, R0, #0x10
MOV             R10, #0
LDR             R1, =off_6BC568
LDR             R9, =off_6B7BEC
STR             R1, [R0]
STR             R10, [R0,#0x24]
LDR             R6, [R0,#0x1C]!
LDR             R5, [R0,#4]
CMP             R6, R5
BEQ             loc_293FC8
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_293FB4
LDR             R8, [R4]
CMP             R8, #0
BEQ             loc_293FB4
STR             R9, [R8,#0x62C]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R8, #0x18
BLX             sub_1009D8
MOV             R0, R8
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x22C
BL              sub_503254
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_293F54
STR             R10, [R7,#0xC]
STR             R10, [R7,#0x10]
LDR             R0, [R7,#8]
STR             R10, [R7,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
ADD             R8, R7, #0xC
LDR             R6, [R7,#0xC]!
LDR             R5, [R7,#4]
CMP             R6, R5
BEQ             loc_294068
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_294054
LDR             R7, [R4]
CMP             R7, #0
BEQ             loc_294054
STR             R9, [R7,#0x62C]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R7, #0x18
BLX             sub_1009D8
MOV             R0, R7
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x22C
BL              sub_503254
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_293FF4
LDR             R0, [R8,#-4]
SUB             R4, R8, #4
CMP             R0, #0
BLNE            sub_2FF5D4
SUB             R0, R4, #0x18
POP             {R4-R10,PC}
