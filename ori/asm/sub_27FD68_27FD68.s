LDR             R1, =off_6BC268
PUSH            {R4,LR}
MOV             R2, #0
STR             R1, [R0]
LDR             R1, [R0,#0x10]
ADD             R0, R0, #0x20 ; ' '
STR             R2, [R1,#0x71C]
BL              sub_14F3EC
SUB             R4, R0, #0x10
LDR             R0, [R0,#-8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_27FDB4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27FDB4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
ADD             R1, R4, #4
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
SUB             R0, R4, #0x10
POP             {R4,LR}
B               sub_300FD4
