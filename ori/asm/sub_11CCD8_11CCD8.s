MOV             R2, #0
NOP
CMP             R2, #0
STR             R1, [R0,#4]
BEQ             loc_11CD00
MOV             R1, #0
STR             R1, [R0,#0xC]
STR             R2, [R0,#8]
STR             R1, [R0,#0x10]
BX              LR
LDR             R2, =dword_6EA200
LDR             R3, [R2]
CMP             R3, R1
LDRLS           R3, [R2,#(dword_6EA204 - 0x6EA200)]
CMPLS           R1, R3
MOVCC           R2, #0x10000
BCC             loc_11CCEC
LDR             R3, [R2,#(dword_6EA208 - 0x6EA200)]
CMP             R3, R1
LDRLS           R3, [R2,#(dword_6EA20C - 0x6EA200)]
CMPLS           R1, R3
MOVCC           R2, #0x20000
BCC             loc_11CCEC
LDR             R3, [R2,#(dword_6EA210 - 0x6EA200)]
CMP             R3, R1
LDRLS           R2, [R2,#(dword_6EA214 - 0x6EA200)]
CMPLS           R1, R2
MOVCS           R2, #0
MOVCC           R2, #0x30000
B               loc_11CCEC
