LDR             R2, =0x1428F
LDRB            R2, [R2,R0]
CMP             R2, #0
BNE             locret_160FFC
CMP             R1, #0
ADD             R0, R0, #0x14000
ADD             R0, R0, #0x460
MOV             R1, #0
BEQ             loc_160FF4
B               sub_5A1D68
NOP
B               sub_5A1598
BX              LR
