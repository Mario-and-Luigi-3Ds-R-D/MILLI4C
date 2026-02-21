PUSH            {R4-R6,LR}
LDR             R5, =unk_70C1D0
LDR             R1, [R5,#(dword_70C1E4 - 0x70C1D0)]
LDR             R2, [R5,#(dword_70C1E0 - 0x70C1D0)]
MOV             R4, R1
ADD             R3, R2, #0x2400
ADD             R4, R4, #0x18
CMP             R3, R4
MOVEQ           R4, R2
LDRB            R0, [R4,#0x11]
CMP             R0, #3
BEQ             loc_133F34
CMP             R1, R4
BNE             loc_133F0C
MOV             R0, #0
POP             {R4-R6,PC}
MOV             R0, R4
BL              sub_1291C4
MOV             R0, R4
STR             R4, [R5,#(dword_70C1E4 - 0x70C1D0)]
POP             {R4-R6,PC}
