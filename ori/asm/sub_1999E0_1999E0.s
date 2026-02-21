PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x120]
LDR             R1, [R4,#0x3D0]
VLDR            S0, =10.0
BIC             R0, R0, #9
TST             R1, #1
STR             R0, [R4,#0x120]
BEQ             loc_199A14
MOV             R1, #1
MOV             R0, R4
BL              loc_1977C4
B               loc_199A20
MOV             R1, #0
MOV             R0, R4
BL              loc_1977C4
MOV             R1, #1
MOV             R0, R4
BL              sub_1FF828
LDR             R0, [R4,#0x120]
BIC             R0, R0, #2
STR             R0, [R4,#0x120]
LDR             R0, [R4]
LDR             R1, [R0,#0xC8]
MOV             R0, R4
BLX             R1
LDR             R1, =off_68BBB8
LDRD            R0, R1, [R1,#(off_68BBD8 - 0x68BBB8)]
STRD            R0, R1, [R4,#4]
POP             {R4,PC}
