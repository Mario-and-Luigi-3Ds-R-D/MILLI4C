LDR             R1, =byte_6D23B8
MOV             R0, #0
PUSH            {R4,LR}
STR             R0, [R1,#(dword_6D23C0 - 0x6D23B8)]
BL              sub_11CD90
POP             {R4,LR}
B               sub_11CD54
