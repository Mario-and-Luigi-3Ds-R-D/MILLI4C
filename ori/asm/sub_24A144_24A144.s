LDR             R0, [R2,#0x2C]
CMP             R0, #2
CMPNE           R0, #3
BNE             locret_24A160
LDR             R0, =off_6CDD80
LDR             R0, [R0]
B               sub_38862C
BX              LR
