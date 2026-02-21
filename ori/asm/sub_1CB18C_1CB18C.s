PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6B14DC
LDR             R1, =sub_1E4E50
MOV             R3, #0x23 ; '#'
STR             R0, [R4]
ADD             R0, R4, #0x4000
MOV             R2, #0x60 ; '`'
ADD             R0, R0, #0x250
BLX             sub_1009D8
MOV             R0, R4
POP             {R4,LR}
B               sub_1F399C
