LDR             R2, =off_6B15C0
PUSH            {R4-R8,LR}
MOV             R1, R0
MOV             R7, #0
STR             R2, [R0],#0xF4
LDR             R2, =off_6C0770
STR             R2, [R0]
LDR             R2, [R0,#4]
CMP             R2, #0
STRNE           R7, [R2,#0x64]
STRNE           R7, [R0,#4]
ADD             R0, R1, #0xA4
NOP
SUB             R0, R0, #0x58 ; 'X'
NOP
SUB             R0, R0, #0x2C ; ','
NOP
LDR             R5, [R0,#-0x14]
SUB             R6, R0, #0x14
LDR             R0, [R5,#8]
CMP             R0, R5
BEQ             loc_1CBCE4
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
BNE             loc_1CBCA8
SUB             R0, R6, #0xC
POP             {R4-R8,LR}
B               sub_300FD4
