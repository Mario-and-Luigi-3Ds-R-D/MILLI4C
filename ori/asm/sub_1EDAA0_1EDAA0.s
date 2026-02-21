MOV             R0, R1
PUSH            {R4,LR}
LDR             R1, [R1]
LDR             R1, [R1,#0x3E4]
BLX             R1
CMP             R0, #0
BEQ             locret_1EDACC
LDR             R0, =dword_6E2378
MOV             R1, #4
STRB            R1, [R0,#(byte_6E2387 - 0x6E2378)]
MOV             R0, #1
POP             {R4,PC}
