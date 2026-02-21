CMP             R1, #0
BEQ             locret_1FFCB4
LDR             R0, [R1,#0x14]
CMP             R0, #0x3F800000
VLDREQ          S0, =-1.0
VSTREQ          S0, [R1]
BX              LR
