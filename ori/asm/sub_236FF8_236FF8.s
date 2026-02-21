LDR             R1, =off_6B39E8
PUSH            {R4,LR}
ADD             R4, R0, #0xD4
STR             R1, [R0]
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0,#0xD4]
LDR             R1, =nullsub_300
ADD             R0, R0, #0xEC
BLX             sub_1009D8
MOV             R0, R4
NOP
LDR             R1, =off_6B7BFC
SUB             R4, R0, #0xC0
MOV             R3, #1
STR             R1, [R0,#-0xC0]
LDR             R1, =sub_5A2F60
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x90
BLX             sub_1009D8
MOV             R0, R4
NOP
POP             {R4,LR}
SUB             R0, R0, #0x14
B               nullsub_824
