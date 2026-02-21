PUSH            {R4,LR}
MOV             R4, R0
BL              sub_52C5FC
CMP             R0, #0
BEQ             locret_1D2D94
MOV             R0, R4
BL              sub_5295A8
CMP             R0, #0
BNE             locret_1D2D94
MOV             R0, R4
BL              sub_528E64
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDR             R0, [R1,#(off_6540CC - 0x653FC0)]; sub_1D2D9C
LDR             R1, [R1,#(dword_6540D0 - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
POP             {R4,PC}
