LDR             R1, =off_6B2718
PUSH            {R4,LR}
ADD             R4, R0, #0x14
STR             R1, [R0]
LDR             R1, =off_6B7C0C
MOV             R3, #2
MOV             R2, #0x28 ; '('
STR             R1, [R0,#0x14]
LDR             R1, =sub_5A2F60
ADD             R0, R0, #0x44 ; 'D'
BLX             sub_1009D8
MOV             R0, R4
NOP
POP             {R4,LR}
SUB             R0, R0, #0x14
B               sub_300FD4
