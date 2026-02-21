PUSH            {R4-R6,LR}
ADD             R4, R0, #0xE4
LDR             R5, =off_6B7BEC
LDR             R1, =nullsub_300
MOV             R3, #1
STR             R5, [R0,#0xE4]!
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
SUB             R4, R0, #0x38 ; '8'
STR             R5, [R0,#-0x38]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x20 ; ' '
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R4, R0, #0x78 ; 'x'
LDR             R0, =off_6B7BFC
LDR             R1, =sub_5A2F60
MOV             R3, #1
STR             R0, [R4,#0x20]!
MOV             R2, #0x28 ; '('
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0x20 ; ' '
POP             {R4-R6,PC}
