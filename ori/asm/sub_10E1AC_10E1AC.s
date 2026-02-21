PUSH            {R4,LR}
LDR             R4, =byte_6D4A28
LDR             R0, [R4,#(dword_6D4A30 - 0x6D4A28)]
CMP             R0, #0
BEQ             locret_10E1E8
LDR             R0, =dword_70E3B8
BL              sub_11A678
ADD             R0, R4, #0x14
LDR             R0, [R0]
SVC             0x23 ; '#'
LDR             R0, =dword_69A360
MOV             R1, #0
LDR             R0, [R0,#(dword_69A364 - 0x69A360)]
STR             R1, [R4,#(dword_6D4A30 - 0x6D4A28)]!
STR             R0, [R4,#(dword_6D4A3C - 0x6D4A30)]
POP             {R4,PC}
