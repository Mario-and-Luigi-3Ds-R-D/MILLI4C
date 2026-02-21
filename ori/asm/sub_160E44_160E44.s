LDR             R2, =0x1428F
LDRB            R2, [R2,R0]
CMP             R2, #0
BNE             locret_160E74
CMP             R1, #0
ADD             R0, R0, #0x14000
ADD             R0, R0, #0x460
MOV             R1, #0
BEQ             loc_160E6C
B               sub_5A1C9C
NOP
B               sub_5A13F0
BX              LR
