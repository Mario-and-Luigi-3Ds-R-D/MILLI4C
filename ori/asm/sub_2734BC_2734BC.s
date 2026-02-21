LDR             R1, =off_6BC024
PUSH            {R4,LR}
ADD             R4, R0, #0x400
STR             R1, [R0]
LDR             R1, =off_6B7C1C
ADD             R4, R4, #0xC
MOV             R3, #3
STR             R1, [R0,#0x40C]
ADD             R0, R0, #0x400
LDR             R1, =sub_5A2F60
MOV             R2, #0x28 ; '('
ADD             R0, R0, #0x3C ; '<'
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
SUB             R0, R0, #8
POP             {R4,PC}
