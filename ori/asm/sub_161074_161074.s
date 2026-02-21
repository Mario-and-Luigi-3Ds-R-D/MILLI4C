LDR             R2, =0x1428F
LDRB            R2, [R2,R0]
CMP             R2, #1
BNE             locret_1610A4
CMP             R1, #0
ADD             R0, R0, #0x14000
ADD             R0, R0, #0x460
MOV             R1, #0
BEQ             loc_16109C
B               sub_5A1D68
NOP
B               sub_5A1598
BX              LR
