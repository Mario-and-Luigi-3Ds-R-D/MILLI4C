LDR             R2, =dword_7017C4
LDR             R1, [R2,#(dword_7017C8 - 0x7017C4)]
CMP             R1, #0
LDRNE           R2, [R2,#(dword_7017CC - 0x7017C4)]
CMPNE           R2, #0
BEQ             loc_14002C
CMP             R1, R0
ADDLS           R1, R1, R2
CMPLS           R0, R1
MOVCC           R0, #1
BCC             locret_140030
MOV             R0, #0
BX              LR
