LDR             R1, =off_6B7BEC
PUSH            {R4,LR}
ADD             R4, R0, #0xB0
STR             R1, [R0,#0xB0]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R0, #0xC8
BLX             sub_1009D8
MOV             R0, R4
NOP
LDR             R1, =off_6B7BFC
SUB             R4, R0, #0x58 ; 'X'
MOV             R3, #1
STR             R1, [R0,#-0x58]
LDR             R1, =sub_5A2F60
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x28 ; '('
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0x58 ; 'X'
POP             {R4,PC}
