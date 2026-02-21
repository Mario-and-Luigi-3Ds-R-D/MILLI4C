LDR             R1, =off_6B3E10
PUSH            {R4,LR}
MOV             R3, #8
STR             R1, [R0],#4
LDR             R1, =sub_2A0D78
MOV             R2, #0x10
BLX             sub_1002F4
SUB             R0, R0, #4
MOV             R1, #0
STRB            R1, [R0,#0x84]
STR             R1, [R0,#0x88]
POP             {R4,PC}
