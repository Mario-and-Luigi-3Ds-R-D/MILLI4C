LDR             R1, =byte_6D2578
PUSH            {R3,LR}
STR             R0, [R1,#(dword_6D2588 - 0x6D2578)]
STR             R0, [SP,#8+var_8]
LDR             R1, =0x40205C8
MOV             R0, SP
BL              sub_10D8B4
MOV             R0, #0
POP             {R3,PC}
