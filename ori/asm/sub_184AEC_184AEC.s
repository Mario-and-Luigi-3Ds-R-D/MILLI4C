LDR             R1, =off_6AF598
PUSH            {R4,LR}
MOV             R4, R0
STR             R1, [R0],#8
LDR             R1, =sub_321374
MOV             R3, #2
MOV             R2, #0x98
BLX             sub_1009D8
MOV             R0, R4
POP             {R4,LR}
B               sub_300FD4
