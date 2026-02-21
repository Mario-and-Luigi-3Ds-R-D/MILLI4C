LDR             R0, [R0,#4]
NOP
LDR             R1, =0x2686
LDRB            R1, [R1,R0]
CMP             R1, #1
BEQ             loc_16C970
CMP             R1, #2
CMPNE           R1, #3
BEQ             loc_16C97C
B               sub_53EF44
LDR             R1, [R0]
LDR             R1, [R1,#0x3FC]
BX              R1
LDR             R1, [R0]
LDR             R1, [R1,#0x400]
BX              R1
