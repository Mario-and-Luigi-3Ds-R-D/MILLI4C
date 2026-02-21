LDR             R1, =off_6AE5B0
PUSH            {R4,LR}
MOV             R4, R0
ADD             R2, R1, #0x380
ADD             R3, R2, #0x18
STR             R3, [R0,#0x758]
STR             R2, [R0,#0xE0]
STR             R1, [R0]
ADD             R0, R0, #0x800
LDR             R1, =sub_232C8C
MOV             R3, #6
MOV             R2, #0x128
ADD             R0, R0, #0x328
BLX             sub_1009D8
ADD             R0, R4, #0x800
ADD             R0, R0, #0x30C
NOP
SUB             R0, R0, #0x1C
NOP
SUB             R0, R0, #0x398
BL              sub_2FCC28
SUB             R0, R0, #0x400
POP             {R4,LR}
SUB             R0, R0, #0x358
B               sub_582B98
