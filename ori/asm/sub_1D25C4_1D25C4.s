PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =0x19DFE8
LDR             R0, [R4,R0]
CMP             R0, #0
BEQ             loc_1D25E8
BL              sub_5C6EDC
CMP             R0, #0
BEQ             locret_1D25F8
LDR             R1, =off_65412C
ADD             R2, R4, #0x1A0000
LDM             R1, {R0,R1}
STRD            R0, R1, [R2,#0x5C]
POP             {R4,PC}
