LDR             R1, =off_6CE970
PUSH            {R4,LR}
LDR             R0, =0x120F78
LDR             R1, [R1]
LDR             R0, [R1,R0]
CMP             R0, #0
BEQ             locret_208990
BL              sub_2E8F94
MOV             R0, #0
POP             {R4,PC}
