CMP             R1, #0
BEQ             loc_249EA0
CMP             R1, #1
BEQ             loc_249E88
CMP             R1, #2
MOVEQ           R1, #1
STRBEQ          R1, [R0,#0x4E8]
BEQ             locret_249E84
CMP             R1, #3
BNE             locret_249E84
MOV             R2, #3
MOV             R1, #0
STRB            R2, [R0,#0x4E8]
STRB            R1, [R0,#0x509]
BX              LR
LDR             R1, =off_6CDD80
LDR             R1, [R1]
LDR             R1, [R1,#8]
LDR             R1, [R1,#0x34]
STR             R1, [R0,#0x4E4]
BX              LR
NOP
B               sub_249BA8
