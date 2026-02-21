LDR             R1, =off_6D1648
LDR             R1, [R1]
LDR             R1, [R1,#0xA0]
ADD             R1, R1, #0x14400
ADD             R1, R1, #0x204
LDR             R1, [R1,#0x28]
LDRB            R1, [R1,#0x38]
CMP             R1, #3
BNE             locret_18EDA0
LDR             R1, [R0]
MOV             R3, #1
LDR             R12, [R1,#0x50]
LDR             R1, =off_67DDC4
LDM             R1, {R1,R2}
BX              R12
BX              LR
