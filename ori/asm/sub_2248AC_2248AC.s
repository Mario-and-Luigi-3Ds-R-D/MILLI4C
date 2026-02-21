PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6BB93C
STR             R0, [R4]
LDR             R0, [R4,#0x24C]
CMP             R0, #0
BEQ             loc_2248DC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4,#0x24C]
LDR             R5, =off_6B7BEC
LDR             R1, =nullsub_300
MOV             R3, #1
STR             R5, [R4,#0x218]!
MOV             R2, #0x1C
ADD             R0, R4, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
LDR             R6, =off_6B7BFC
SUB             R4, R0, #0x58 ; 'X'
LDR             R1, =sub_5A2F60
STR             R6, [R0,#-0x58]
MOV             R3, #1
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x28 ; '('
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
STR             R5, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
STR             R5, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x58 ; 'X'
STR             R6, [R0,#-0x58]
LDR             R1, =sub_5A2F60
MOV             R3, #1
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x28 ; '('
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
POP             {R4-R6,LR}
SUB             R0, R0, #0x100
B               sub_14CD84
