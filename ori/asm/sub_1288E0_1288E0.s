PUSH            {R4-R6,LR}
MOV             R6, R0
MOV             R5, R1
MOV             R4, #0
MOV             R1, R4
MOV             R0, R6
BL              sub_132CFC
MOVS            R4, R0
NOP
BEQ             locret_128934
LDR             R0, [R4,#0x18]
CMP             R0, R5
BHI             loc_1288F0
LDR             R0, [R4,#0x1C]
CMP             R5, R0
BCS             loc_1288F0
MOV             R1, R5
ADD             R0, R4, #0xC
BL              sub_1288E0
CMP             R0, #0
MOVEQ           R0, R4
POP             {R4-R6,PC}
