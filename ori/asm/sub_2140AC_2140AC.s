PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6B2A5C
LDR             R1, =sub_203CDC
MOV             R3, #0x28 ; '('
STR             R0, [R4]
ADD             R0, R4, #0x800
MOV             R2, #8
ADD             R0, R0, #0x2E4
BLX             sub_1009D8
LDR             R1, =sub_214578
MOV             R3, #0x100
MOV             R2, #8
ADD             R0, R4, #0x2B0
BLX             sub_1009D8
MOV             R0, R4
POP             {R4,LR}
B               sub_29D258
