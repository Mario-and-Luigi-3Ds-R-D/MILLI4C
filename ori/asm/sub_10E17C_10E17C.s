PUSH            {R4,LR}
LDR             R4, =byte_6D4A28
MOV             R0, #0
LDRB            R1, [R4,#(byte_6D4A29 - 0x6D4A28)]
CMP             R1, #0
BEQ             locret_10E1A4
LDR             R0, [R4,#(dword_6D4A30 - 0x6D4A28)]
BL              sub_128628
MOV             R1, #0
STRB            R1, [R4,#(byte_6D4A29 - 0x6D4A28)]
POP             {R4,PC}
