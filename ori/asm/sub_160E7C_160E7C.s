LDR             R2, =0x1428F
LDRB            R2, [R2,R0]
CMP             R2, #0
BNE             locret_160EAC
CMP             R1, #0
ADD             R0, R0, #0x14000
ADD             R0, R0, #0x460
MOV             R1, #0
BEQ             loc_160EA4
B               sub_5A1834
NOP
B               sub_5A1AA8
BX              LR
