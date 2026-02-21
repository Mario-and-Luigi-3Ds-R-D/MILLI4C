PUSH            {R4-R6,LR}
ADD             R4, R0, #0x40 ; '@'
LDR             R5, =off_6B7BEC
LDR             R1, =nullsub_300
MOV             R3, #1
STR             R5, [R0,#0x40]!
MOV             R2, #0x1C
ADD             R0, R0, #0x18
BLX             sub_1009D8
MOV             R0, R4
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
SUB             R0, R0, #0xC
POP             {R4-R6,PC}
