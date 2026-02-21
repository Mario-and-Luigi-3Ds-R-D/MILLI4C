LDR             R1, =off_6B3894
PUSH            {R4-R6,LR}
MOV             R3, #1
LDR             R5, =off_6B7BFC
STR             R1, [R0],#0x9C
MOV             R4, R0
LDR             R1, =sub_5A2F60
MOV             R2, #0x28 ; '('
STR             R5, [R0],#0x30
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R4, R0, #0x58 ; 'X'
STR             R5, [R0,#-0x58]
LDR             R1, =sub_5A2F60
MOV             R3, #1
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x28 ; '('
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0x44 ; 'D'
NOP
POP             {R4-R6,LR}
B               sub_300FD4
