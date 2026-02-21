PUSH            {R4,R5}
MOV             R5, R1
LDR             R1, =byte_6D4A28
MOV             R4, R0
LDR             R0, =0xC8A0A7F8
LDR             R12, [R1,#(dword_6D4A30 - 0x6D4A28)]
CMP             R12, #0
BEQ             loc_128524
MOV             R3, R2
MOV             R2, R5
MOV             R1, R4
POP             {R4,R5}
MOV             R0, R12
B               sub_132A84
POP             {R4,R5}
BX              LR
