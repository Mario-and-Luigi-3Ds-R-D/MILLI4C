PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6B0958
LDR             R1, =sub_4E6A84
MOV             R3, #1
STR             R0, [R4]
MOV             R2, #0x58 ; 'X'
ADD             R0, R4, #0x3BC
BLX             sub_1009D8
LDR             R0, =off_6B7BEC
LDR             R1, =nullsub_300
MOV             R3, #1
STR             R0, [R4,#0x384]!
MOV             R2, #0x1C
ADD             R0, R4, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R4, R0, #0x384
LDR             R1, =sub_53700C
MOV             R3, #2
MOV             R2, #0x11C
SUB             R0, R0, #0x254
BLX             sub_1009D8
LDR             R1, =sub_234C6C
MOV             R3, #3
MOV             R2, #0x50 ; 'P'
ADD             R0, R4, #0x40 ; '@'
BLX             sub_1009D8
MOV             R0, R4
NOP
POP             {R4,LR}
B               sub_300FD4
