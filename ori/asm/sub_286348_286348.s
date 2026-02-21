PUSH            {R4-R10,LR}
ADD             R8, R0, #0x118
LDR             R6, [R0,#0x118]!
LDR             R5, [R0,#4]
CMP             R6, R5
LDRNE           R9, =off_6B7BEC
BEQ             loc_2863E4
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_2863D0
LDR             R7, [R4]
CMP             R7, #0
BEQ             loc_2863D0
STR             R9, [R7,#0x4C0]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R7, #0x18
BLX             sub_1009D8
MOV             R0, R7
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x28 ; '('
BL              sub_14F3EC
SUB             R0, R0, #0x90
NOP
NOP
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_286364
LDR             R0, [R8,#-0x7C]
SUB             R1, R8, #0x80
SUB             R7, R8, #0x84
CMP             R0, R1
BNE             loc_28646C
LDR             R0, [R7]
CMP             R0, #0
BEQ             loc_28646C
ADD             R8, R0, #0x40 ; '@'
LDR             R6, [R0,#0x40]!
LDR             R5, [R0,#4]
CMP             R6, R5
BEQ             loc_286464
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_286450
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_286450
ADD             R0, R0, #8
BL              sub_14F3EC
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_286418
SUB             R0, R8, #0x40 ; '@'
BL              sub_300FD4
ADD             R1, R7, #4
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R5, [R7,#-8]!
LDR             R6, [R7,#-4]!
CMP             R6, R5
BEQ             loc_2864D0
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_2864BC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2864BC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_28648C
SUB             R0, R7, #0x88
POP             {R4-R10,PC}
