PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
LDR             R1, =0x1063C8
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R1, R0; loc_1063C8
MOV             R0, #0x20 ; ' '
BL              sub_5F5948
CMP             R0, #0
BEQ             locret_1486C8
MOV             R1, R4
POP             {R4,LR}
MOV             R2, #2
B               sub_2E997C
POP             {R4,PC}
