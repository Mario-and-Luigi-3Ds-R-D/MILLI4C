NOP
LDR             R0, =dword_70E3CC
PUSH            {R4,LR}
BL              sub_13273C
LDR             R4, =byte_6D4A60
LDRB            R0, [R4]
CMP             R0, #0
BEQ             loc_11A0E0
LDR             R0, [R4,#(dword_6D4A7C - 0x6D4A60)]
BL              sub_122DD0
LDR             R0, [R4,#(dword_6D4A70 - 0x6D4A60)]
SVC             0x23 ; '#'
LDR             R0, =dword_69A374
LDR             R0, [R0,#(dword_69A378 - 0x69A374)]
STR             R0, [R4,#(dword_6D4A74 - 0x6D4A60)]
MOV             R0, #0
STRB            R0, [R4]
LDR             R0, =dword_70E3CC
POP             {R4,LR}
B               sub_1327BC
LDR             R0, =dword_70E3CC
POP             {R4,LR}
B               sub_1327BC
