LDR             R1, =off_6BB6F8
PUSH            {R4,LR}
MOV             R3, #1
STR             R1, [R0],#0x198
LDR             R1, =off_6B7BEC
MOV             R4, R0
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =nullsub_300
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0x88
BL              sub_47F9C8
SUB             R0, R0, #0x110
MOV             R1, #0x108
MOV             R2, #0
STRH            R2, [R1,R0]
BL              sub_14CD84
POP             {R4,LR}
B               sub_300FD4
