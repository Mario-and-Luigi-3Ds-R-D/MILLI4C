PUSH            {R4,LR}
MOV             R4, R0
BL              sub_5EE780
CMP             R0, #0
BEQ             locret_1D4344
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDRD            R0, R1, [R1,#(off_653FDC - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
POP             {R4,PC}
