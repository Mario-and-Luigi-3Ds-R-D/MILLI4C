LDR             R1, =off_6B8580
PUSH            {R4,LR}
MOV             R4, R0
ADD             R2, R1, #0x3F8
ADD             R3, R2, #0x18
STR             R3, [R0,#0x758]
STR             R2, [R0,#0xE0]
STR             R1, [R0]
ADD             R0, R0, #0x800
LDR             R2, =0x758
LDR             R1, =sub_53E628
MOV             R3, #4
ADD             R0, R0, #0xF8
BLX             sub_1009D8
MOV             R0, R4
POP             {R4,LR}
B               sub_17584C
