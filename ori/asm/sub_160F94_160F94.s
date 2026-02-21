LDR             R2, =0x1428F
LDRB            R2, [R2,R0]
CMP             R2, #0
BNE             locret_160FC4
CMP             R1, #0
ADD             R0, R0, #0x14000
ADD             R0, R0, #0x460
MOV             R1, #0
BEQ             loc_160FBC
B               sub_5A1B5C
NOP
B               sub_5A1218
BX              LR
