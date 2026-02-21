LDR             R1, [R0,#0x800]
CMP             R1, #0
LDRNE           R1, [R1,#0x38]
CMPNE           R1, #0
BEQ             locret_194E90
B               sub_174300
BX              LR
