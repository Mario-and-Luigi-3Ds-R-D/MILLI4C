PUSH            {R4,LR}
MOV             R4, R0
BL              sub_1EC30C
CMP             R0, #0
BEQ             locret_1C9328
LDR             R1, =off_67EE54
LDRD            R0, R1, [R1,#(off_67EEA4 - 0x67EE54)]
STRD            R0, R1, [R4,#0x4C]
MOV             R0, #1
POP             {R4,PC}
