LDR             R1, =off_6B2B20
PUSH            {R4,LR}
MOV             R3, #1
STR             R1, [R0],#0x54C
SUB             R4, R0, #0x13C
LDR             R0, =off_6B7BEC
LDR             R1, =nullsub_300
MOV             R2, #0x1C
STR             R0, [R4,#0x108]!
ADD             R0, R4, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0x104
BL              sub_593394
SUB             R0, R0, #0x400
SUB             R0, R0, #0x14
BL              sub_14F3EC
POP             {R4,LR}
B               sub_300FD4
