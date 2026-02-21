LDR             R1, =off_6B2A5C
PUSH            {R4,LR}
MOV             R4, R0
STR             R1, [R0],#0xAE4
LDR             R1, =sub_203CDC
MOV             R3, #0x28 ; '('
MOV             R2, #8
BLX             sub_1009D8
LDR             R1, =sub_214578
MOV             R3, #0x100
MOV             R2, #8
ADD             R0, R4, #0x2B0
BLX             sub_1009D8
MOV             R0, R4
BL              sub_29D258
POP             {R4,LR}
B               sub_300FD4
