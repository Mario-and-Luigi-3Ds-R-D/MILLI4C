LDR             R1, =off_6B3A34
PUSH            {R4,LR}
MOV             R4, R0
STR             R1, [R0]
ADD             R0, R0, #0xA400
LDR             R1, =sub_4E6A14
MOV             R3, #0xA0
MOV             R2, #0x34 ; '4'
ADD             R0, R0, #0x38C
BLX             sub_1009D8
ADD             R0, R4, #0x7000
LDR             R1, =sub_4E6A84
MOV             R3, #0xA0
MOV             R2, #0x58 ; 'X'
ADD             R0, R0, #0x8C
BLX             sub_1009D8
ADD             R0, R4, #0x5000
LDR             R1, =sub_4E6A14
MOV             R3, #0xA0
MOV             R2, #0x34 ; '4'
ADD             R0, R0, #0xC
BLX             sub_1009D8
LDR             R1, =sub_4E6AF4
MOV             R3, #0xA0
MOV             R2, #0x80
ADD             R0, R4, #0xC
BLX             sub_1009D8
MOV             R0, R4
POP             {R4,LR}
B               sub_300FD4
