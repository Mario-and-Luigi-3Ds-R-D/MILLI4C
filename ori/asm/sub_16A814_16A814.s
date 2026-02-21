LDR             R1, =0x2686
LDRB            R1, [R1,R0]
CMP             R1, #1
BEQ             locret_16A828
B               sub_57444C
BX              LR
