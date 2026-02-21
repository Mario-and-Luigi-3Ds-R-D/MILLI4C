PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R0, [R0,#0x18]
BL              sub_5C5820
CMP             R0, #0
BNE             locret_1574FC
LDR             R1, =off_63FDB0
LDRD            R0, R1, [R1,#(off_63FE50 - 0x63FDB0)]
STRD            R0, R1, [R4,#0xC]
MOV             R0, R4
POP             {R4,LR}
B               sub_154484
POP             {R4,PC}
