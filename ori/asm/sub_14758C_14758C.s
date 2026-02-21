LDR             R0, =off_6CE970
PUSH            {R4,LR}
LDR             R1, =0x1063C8
MOV             R3, #0
LDR             R0, [R0]
MOV             R2, R3
ADD             R1, R1, R0; loc_1063C8
MOV             R0, #0x24 ; '$'
BL              sub_5F5948
CMP             R0, #0
BEQ             locret_1475C0
POP             {R4,LR}
B               sub_33AE9C
POP             {R4,PC}
