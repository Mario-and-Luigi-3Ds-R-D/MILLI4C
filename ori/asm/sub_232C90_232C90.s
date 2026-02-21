PUSH            {R4-R6,LR}
ADD             R4, R0, #0x9C
LDR             R1, =off_6B3894
LDR             R5, =off_6B7BFC
MOV             R3, #1
STR             R1, [R0]
STR             R5, [R0,#0x9C]!
LDR             R1, =sub_5A2F60
MOV             R2, #0x28 ; '('
ADD             R0, R0, #0x30 ; '0'
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
POP             {R4-R6,LR}
SUB             R0, R0, #0x44 ; 'D'
B               nullsub_34
