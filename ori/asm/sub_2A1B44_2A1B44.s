LDR             R1, =off_6B3E20
PUSH            {R4,LR}
MOV             R4, R0
STR             R1, [R0]
LDR             R0, [R0,#8]
CMP             R0, #0
BEQ             loc_2A1B74
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R0, #0
STR             R0, [R4,#8]
LDR             R0, =off_6B7BEC
LDR             R1, =nullsub_300
MOV             R3, #1
STR             R0, [R4,#0x22C]!
MOV             R2, #0x1C
ADD             R0, R4, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
LDR             R1, =off_6B7C1C
SUB             R4, R0, #0xA8
MOV             R3, #3
STR             R1, [R0,#-0xA8]
LDR             R1, =sub_5A2F60
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x78 ; 'x'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x104
NOP
BL              sub_593394
POP             {R4,LR}
SUB             R0, R0, #0x80
B               sub_300FD4
