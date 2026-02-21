PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =byte_6CEE28
LDR             R1, =sub_106808
STR             R4, [R0,#(off_6CEE2C - 0x6CEE28)]; dword_6ED9B8
LDR             R0, =sub_1067E8
BL              sub_1067D4
MOV             R0, R4
POP             {R4,LR}
MOV             R1, #0
B               sub_106D04
