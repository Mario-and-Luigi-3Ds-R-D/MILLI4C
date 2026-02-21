PUSH            {R4,LR}
MOV             R4, R0
BL              sub_52B040
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDR             R0, [R1,#(off_654134 - 0x653FC0)]; sub_1D262C
LDR             R1, [R1,#(dword_654138 - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
POP             {R4,PC}
