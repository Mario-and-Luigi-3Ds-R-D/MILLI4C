LDR             R1, =off_6BC58C
PUSH            {R4,LR}
STR             R1, [R0],#0x18
BL              sub_14F3EC
SUB             R4, R0, #0x10
LDR             R0, [R0,#-8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_2943BC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2943BC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
ADD             R1, R4, #4
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
SUB             R0, R4, #8
POP             {R4,LR}
B               sub_300FD4
