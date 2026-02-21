LDR             R1, =off_6AE0A4
PUSH            {R4,LR}
LDR             R3, =off_6AE51C
STR             R1, [R0]
LDR             R1, =off_6B7BFC
ADD             R2, R3, #0x18
STR             R2, [R0,#0x758]
ADD             R4, R0, #0x2000
STR             R3, [R0,#0xE0]
ADD             R4, R4, #0x710
MOV             R3, #1
STR             R1, [R4]
LDR             R1, =sub_5A2F60
MOV             R2, #0x28 ; '('
ADD             R0, R0, #0x2740
BLX             sub_1009D8
MOV             R0, R4
NOP
LDR             R1, =off_6B7BEC
SUB             R4, R0, #0x34 ; '4'
MOV             R3, #1
STR             R1, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0x2400
POP             {R4,LR}
SUB             R0, R0, #0x2DC
B               sub_540C2C
