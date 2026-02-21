PUSH            {R4,LR}
MOV             R4, R0
BL              sub_1D1AC0
ADD             R0, R4, #0x24000
ADD             R1, R4, #0x1E0; int
ADD             R0, R0, #0xED0; int
BL              sub_1CF120
CMP             R0, #0
BEQ             locret_1D0374
LDR             R0, [R4,#0x228]
CMP             R0, #0
BNE             locret_1D0374
LDR             R2, =0x121B7C
LDR             R1, =0x183304
MOV             R0, #1
STRB            R0, [R4,R2]
STRB            R0, [R1,R4]
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDRD            R0, R1, [R1,#(off_653FFC - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
POP             {R4,PC}
