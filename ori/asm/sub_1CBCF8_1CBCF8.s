LDR             R1, =off_6B15C0
PUSH            {R4-R8,LR}
MOV             R7, #0
STR             R1, [R0],#0xF4
LDR             R1, =off_6C0770
STR             R1, [R0]
LDR             R1, [R0,#4]
CMP             R1, #0
STRNE           R7, [R1,#0x64]
STRNE           R7, [R0,#4]
SUB             R0, R0, #0x50 ; 'P'
NOP
SUB             R0, R0, #0x58 ; 'X'
NOP
SUB             R0, R0, #0x2C ; ','
NOP
LDR             R5, [R0,#-0x14]
SUB             R6, R0, #0x14
LDR             R0, [R5,#8]
CMP             R0, R5
BEQ             loc_1CBD88
ADD             R1, R0, #4
LDM             R1, {R1,R2}
MOV             R4, R1
STR             R1, [R2,#4]
ADD             R1, R0, #4
LDM             R1, {R1,R2}
STR             R2, [R1,#8]
STR             R7, [R0,#8]
STR             R7, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R4,#8]
CMP             R0, R5
BNE             loc_1CBD4C
SUB             R0, R6, #0xC
POP             {R4-R8,PC}
