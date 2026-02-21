LDR             R1, =off_6B24B8
PUSH            {R4,LR}
MOV             R4, R0
STR             R1, [R0],#0x12C
LDR             R1, =sub_37CBBC
MOV             R3, #4
MOV             R2, #0x10
BLX             sub_1009D8
LDR             R1, =sub_37CBBC
MOV             R3, #4
MOV             R2, #0x10
ADD             R0, R4, #0xEC
BLX             sub_1009D8
LDR             R1, =sub_37CBBC
MOV             R3, #4
MOV             R2, #0x10
ADD             R0, R4, #0xAC
BLX             sub_1009D8
MOV             R0, R4
BL              sub_233758
POP             {R4,LR}
B               sub_300FD4
