LDR             R1, =off_6B14DC
PUSH            {R4,LR}
MOV             R4, R0
STR             R1, [R0]
ADD             R0, R0, #0x4000
LDR             R1, =sub_1E4E50
MOV             R3, #0x23 ; '#'
MOV             R2, #0x60 ; '`'
ADD             R0, R0, #0x250
BLX             sub_1009D8
MOV             R0, R4
BL              sub_1F399C
POP             {R4,LR}
B               sub_300FD4
