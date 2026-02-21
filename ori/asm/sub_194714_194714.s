LDR             R2, =off_6B8580
PUSH            {R4,LR}
MOV             R4, R0
ADD             R3, R2, #0x410
STR             R3, [R0,#0x758]
ADD             R1, R2, #0x3F8
STR             R2, [R0]
STR             R1, [R0,#0xE0]
ADD             R0, R0, #0x800
LDR             R2, =0x758
LDR             R1, =sub_53E628
MOV             R3, #4
ADD             R0, R0, #0xF8
BLX             sub_1009D8
MOV             R0, R4
BL              sub_17584C
POP             {R4,LR}
B               sub_300FD4
