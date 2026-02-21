LDR             R1, =off_6BB888
PUSH            {R4,LR}
MOV             R3, #3
STR             R1, [R0],#0x10
LDR             R1, =off_6C357C
MOV             R4, R0
MOV             R2, #0x3F4
STR             R1, [R0],#0x13C
LDR             R1, =sub_14F3EC
BLX             sub_1009D8
MOV             R0, R4
BL              sub_14CD84
POP             {R4,LR}
SUB             R0, R0, #0x10
B               sub_300FD4
