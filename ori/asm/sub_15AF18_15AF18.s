PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6AD064
STR             R0, [R4]
LDR             R1, [R0,#(off_6AD070 - 0x6AD064)]; sub_15AD78
MOV             R0, R4
BLX             R1; sub_15AD78
LDR             R0, [R4,#8]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_15AF4C
BL              sub_110D10
STR             R5, [R4,#8]
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_15AF60
BL              sub_2FF5D4
STR             R5, [R4,#4]
STR             R5, [R4,#0x10]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_15AF88
ADD             R0, R4, #0x14
BL              sub_1DFDA8
ADD             R0, R4, #0x14
NOP
BL              sub_10D33C
STR             R5, [R4,#0xC]
ADD             R0, R4, #0x14
BL              sub_116ED4
SUB             R0, R0, #0x14
STR             R5, [R0,#0x10]
POP             {R4-R6,PC}
