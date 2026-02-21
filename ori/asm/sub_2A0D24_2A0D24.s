LDR             R1, =off_6B3DF4
PUSH            {R4,LR}
STR             R1, [R0],#0x174
BL              sub_2C20A8
SUB             R0, R0, #0x28 ; '('
NOP
SUB             R4, R0, #0x14C
LDR             R0, =off_6B7BEC
LDR             R1, =nullsub_300
MOV             R3, #1
STR             R0, [R4,#0xFC]!
MOV             R2, #0x1C
ADD             R0, R4, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0xFC
POP             {R4,PC}
