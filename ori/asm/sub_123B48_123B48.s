PUSH            {R4,LR}
LDR             R4, =byte_6D49D8
LDRB            R0, [R4]
CMP             R0, #0
BEQ             locret_123B7C
LDRB            R0, [R4,#(byte_6D49D9 - 0x6D49D8)]
BL              sub_12A974
LDR             R1, =0xC9405001
CMP             R0, R1
BNE             locret_123B7C
LDRB            R0, [R4,#(byte_6D49D9 - 0x6D49D8)]
POP             {R4,LR}
B               sub_12A8FC
POP             {R4,PC}
