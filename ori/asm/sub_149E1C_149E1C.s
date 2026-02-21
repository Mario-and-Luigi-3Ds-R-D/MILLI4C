PUSH            {R4-R8,LR}
MOV             R6, R0
LDR             R0, =off_6ACD44
STR             R0, [R6]
LDR             R0, [R6,#0x184]
CMP             R0, #0
BEQ             loc_149E44
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R4, [R6,#0x198]
CMP             R4, #0
BEQ             loc_149E74
MOV             R1, R6
MOV             R0, R4
BL              sub_14C98C
LDR             R0, [R6,#0x198]
CMP             R0, R4
BNE             loc_149E74
MOV             R1, #0
STR             R1, [R6,#0x198]
STR             R1, [R6,#0x10]
LDRB            R5, [R6,#0x1B6]
CMP             R5, #0
ADDNE           R4, R6, #0x1BC
ADDNE           R7, R6, #0x1C8
BEQ             loc_149EB4
TST             R5, #1
BEQ             loc_149EA4
LDR             R0, [R6,#0x180]
LDR             R1, [R4]
ADD             R0, R0, #0x17000
ADD             R0, R0, #0x398
BL              sub_1CF9FC
ADD             R4, R4, #4
CMP             R4, R7
MOV             R5, R5,LSR#1
BNE             loc_149E88
LDRB            R0, [R6,#0x1B7]
CMP             R0, #0
ADDNE           R1, R6, #0x1C8
ADDNE           R3, R6, #0x1D0
BEQ             loc_149EF0
TST             R0, #1
BEQ             loc_149EE0
LDR             R2, [R1]
LDRB            R12, [R2,#0x110]
SUB             R12, R12, #1
STRB            R12, [R2,#0x110]
ADD             R1, R1, #4
CMP             R1, R3
MOV             R0, R0,LSR#1
BNE             loc_149EC8
LDR             R0, [R6,#0x19C]
TST             R0, #0x200000
BEQ             loc_149F1C
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x130000
ADD             R0, R0, #0x6200
LDRH            R1, [R0,#(loc_1362B0 - 0x136200)]
CMP             R1, #0
SUBNE           R1, R1, #1
STRHNE          R1, [R0,#(loc_1362B0 - 0x136200)]
LDR             R1, =sub_2A2618
MOV             R3, #2
MOV             R2, #0x24 ; '$'
ADD             R0, R6, #0x1D0
BLX             sub_1009D8
MOV             R0, R6
POP             {R4-R8,LR}
B               sub_533584
