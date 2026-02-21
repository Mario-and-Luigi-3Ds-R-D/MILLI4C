LDR             R1, =0x1428F
LDRB            R1, [R1,R0]
CMP             R1, #1
BNE             locret_160D0C
ADD             R0, R0, #0x14000
MOV             R1, #0
ADD             R0, R0, #0x460
B               sub_5A186C
BX              LR
