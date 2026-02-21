PUSH            {R4,LR}
MOV             R4, R0
BL              sub_528E64
BL              sub_5EC8BC
CMP             R0, #0
BNE             locret_1D34AC
MOV             R0, R4
BL              sub_52B040
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDRD            R0, R1, [R1,#(off_65407C - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
POP             {R4,PC}
