ADD             R0, R0, #0x400
PUSH            {R4-R6,LR}
ADD             R0, R0, #0x28 ; '('
NOP
SUB             R4, R0, #0xC
LDR             R0, [R0,#-4]
ADD             R1, R4, #4
MOV             R5, #0
CMP             R0, R1
BNE             loc_1A0408
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1A0408
ADD             R0, R0, #0xC
BL              sub_14F3EC
LDR             R2, =off_6C075C
SUB             R0, R0, #0xC
ADD             R1, R0, #4
STR             R2, [R0,#4]
LDR             R2, [R0,#8]
CMP             R2, #0
STRNE           R5, [R2,#0x184]
STRNE           R5, [R1,#4]
BL              sub_300FD4
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
SUB             R4, R4, #0xC
STR             R0, [R1,#4]
STR             R1, [R0]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_1A0448
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1A0448
BL              sub_1A62C8
NOP
NOP
BL              sub_300FD4
ADD             R1, R4, #4
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R1, [R4,#-8]
SUB             R0, R4, #0xC
SUB             R4, R0, #0x10
CMP             R1, #0
STRNE           R5, [R0,#4]
MOV             R0, R4
BL              sub_61E3C4
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_1A049C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1A049C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
STR             R0, [R1,#4]
STR             R1, [R0]
SUB             R0, R4, #0x3F4
POP             {R4-R6,LR}
B               sub_14F3EC
