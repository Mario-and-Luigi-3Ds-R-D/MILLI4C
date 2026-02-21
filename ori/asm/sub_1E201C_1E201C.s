LDR             R1, =off_6B7BEC
PUSH            {R4,LR}
ADD             R4, R0, #0xDC
STR             R1, [R0,#0xDC]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R0, #0xF4
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0x84
NOP
SUB             R0, R0, #0x48 ; 'H'
NOP
SUB             R0, R0, #0x10
POP             {R4,PC}
