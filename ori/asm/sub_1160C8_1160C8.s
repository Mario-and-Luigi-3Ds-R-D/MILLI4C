PUSH            {R4,LR}
LDR             R4, =off_6D4920
LDR             R1, =0x854
STR             R0, [R4]
BL              sub_2FFE8C
BL              sub_11FD54
LDR             R3, [R4]
CMP             R0, #0
STR             R0, [R3,#0x800]
BEQ             loc_116100
MOV             R1, #1
MOV             R0, #0
STR             R1, [R4,#(dword_6D4924 - 0x6D4920)]
POP             {R4,PC}
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_116120
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOV             R1, #0
MOV             R0, #0xFFFFFFFF
STR             R1, [R4]
POP             {R4,PC}
