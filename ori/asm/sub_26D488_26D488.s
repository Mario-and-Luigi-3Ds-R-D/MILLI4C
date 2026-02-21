LDR             R1, =off_6BBF28
PUSH            {R4,LR}
ADD             R4, R0, #8
STR             R1, [R0]
LDR             R1, =off_6B7C1C
MOV             R3, #3
MOV             R2, #0x28 ; '('
STR             R1, [R0,#8]
LDR             R1, =sub_5A2F60
ADD             R0, R0, #0x38 ; '8'
BLX             sub_1009D8
MOV             R0, R4
NOP
POP             {R4,LR}
SUB             R0, R0, #8
B               sub_300FD4
