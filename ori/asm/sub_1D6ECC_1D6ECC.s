PUSH            {R4,LR}
MOV             R4, R0
BL              sub_1D1AC0
LDR             R0, =0x19CF48
LDR             R0, [R4,R0]
TST             R0, #1
BEQ             locret_1D6F18
MOV             R0, R4
BL              sub_5EE9AC
CMP             R0, #0
BNE             loc_1D6F08
LDR             R0, =0x19DFE8
LDR             R0, [R4,R0]
CMP             R0, #0
BLNE            sub_4D12D4
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDRD            R0, R1, [R1,#(off_654034 - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
POP             {R4,PC}
