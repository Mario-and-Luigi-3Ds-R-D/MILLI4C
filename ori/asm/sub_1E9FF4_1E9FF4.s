PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6B24B8
LDR             R1, =sub_37CBBC
MOV             R3, #4
STR             R0, [R4]
MOV             R2, #0x10
ADD             R0, R4, #0x12C
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
POP             {R4,LR}
B               sub_233758
