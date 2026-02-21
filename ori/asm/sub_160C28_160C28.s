LDR             R1, =0x1428F
LDRB            R1, [R1,R0]
CMP             R1, #1
BNE             locret_160C48
ADD             R0, R0, #0x14400
MOV             R1, #0
ADD             R0, R0, #0x94
B               sub_5A2640
BX              LR
