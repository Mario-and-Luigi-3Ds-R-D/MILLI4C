LDR             R1, =off_6AFAD4
PUSH            {R4,LR}
ADD             R4, R0, #0x14400
STR             R1, [R0]
LDR             R1, =off_6B7BEC
ADD             R4, R4, #0x24 ; '$'
ADD             R0, R0, #0x14400
STR             R1, [R4]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R0, #0x3C ; '<'
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0x14400
SUB             R0, R0, #0x24 ; '$'
BL              sub_2B6594
POP             {R4,LR}
B               sub_300FD4
