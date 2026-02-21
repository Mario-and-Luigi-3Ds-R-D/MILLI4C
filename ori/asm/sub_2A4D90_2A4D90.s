LDR             R1, =off_6B3F30
PUSH            {R4,LR}
STR             R1, [R0],#0x330
NOP
SUB             R4, R0, #0x330
LDR             R1, =sub_593394
MOV             R3, #2
MOV             R2, #0x104
SUB             R0, R0, #0x224
BLX             sub_1009D8
MOV             R0, R4
BL              sub_14CD84
POP             {R4,LR}
B               sub_300FD4
