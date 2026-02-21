PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R6, =unk_70C1D0
LDR             R4, [R6,#(dword_70C1E4 - 0x70C1D0)]
MOV             R0, R5
MOV             R1, R4
BL              sub_13F0B0
LDR             R0, [R6,#(dword_70C1E0 - 0x70C1D0)]
ADD             R4, R4, #0x18
ADD             R0, R0, #0x2400
CMP             R0, R4
BNE             loc_134194
POP             {R4-R6,PC}
