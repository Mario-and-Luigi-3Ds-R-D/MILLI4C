ADD             R0, R0, #0x1940
LDR             R0, [R0]
LDRB            R1, [R0]
CMP             R1, #0
BNE             locret_24D5B4
MOV             R1, #1
STRB            R1, [R0]
VLDR            S0, [R0,#0x40]
ADD             R1, R0, #0x3C ; '<'
ADD             R0, R0, #4
B               sub_4E6784
BX              LR
