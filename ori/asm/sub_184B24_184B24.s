PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6AF598
LDR             R1, =sub_321374
MOV             R3, #2
STR             R0, [R4]
MOV             R2, #0x98
ADD             R0, R4, #8
BLX             sub_1009D8
MOV             R0, R4
POP             {R4,PC}
