ADD             R0, R0, #0x20 ; ' '
LDR             R1, [R0,#4]
CMP             R1, #0
LDRNE           R1, [R0,#0x10]
CMPNE           R1, #0
BEQ             loc_1E4DD8
LDR             R1, =0x101
B               sub_5858F8
NOP
B               sub_585940
