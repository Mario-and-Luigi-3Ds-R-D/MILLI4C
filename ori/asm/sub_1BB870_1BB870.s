PUSH            {R4-R6,LR}
ADD             R4, R0, #0x3800
LDR             R1, =off_6B0DE0
LDR             R5, =off_6B7BFC
ADD             R4, R4, #0x1BC
STR             R1, [R0]
ADD             R0, R0, #0x3800
LDR             R1, =sub_5A2F60
MOV             R3, #1
MOV             R2, #0x28 ; '('
ADD             R0, R0, #0x1EC
STR             R5, [R4]
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0x2400
LDR             R1, =off_6AE51C
SUB             R0, R0, #0x3B4
LDR             R2, =off_6AE0A4
STR             R1, [R0,#0xE0]
ADD             R4, R0, #0x2000
ADD             R3, R2, #0x490
STR             R2, [R0]
STR             R3, [R0,#0x758]
ADD             R4, R4, #0x710
LDR             R1, =sub_5A2F60
MOV             R3, #1
MOV             R2, #0x28 ; '('
ADD             R0, R0, #0x2740
STR             R5, [R4]
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
SUB             R0, R0, #0x2DC
BL              sub_540C2C
POP             {R4-R6,LR}
SUB             R0, R0, #0x1000
SUB             R0, R0, #0x208
B               sub_300FD4
