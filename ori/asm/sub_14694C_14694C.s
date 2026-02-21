PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R5, R1
LDR             R0, =off_6CE970
MOV             R4, R2
VPUSH           {D8}
VMOV.F32        S16, S0
LDR             R0, [R0]
MOV             R3, #0
MOV             R2, R3
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#(loc_1063BC - 0x106000)]
MOV             R0, #0x70 ; 'p'
BL              sub_10A358
MOVS            R7, R0
BEQ             loc_1469C0
CMP             R4, #0
BNE             loc_1469A0
BL              sub_147658
MOV             R4, R0
LDR             R2, [R5,#0x18]
VMOV.F32        S0, S16
VPOP            {D8}
MOV             R3, R4
MOV             R1, R6
MOV             R0, R7
POP             {R4-R8,LR}
B               sub_47A0C8
VPOP            {D8}
POP             {R4-R8,PC}
