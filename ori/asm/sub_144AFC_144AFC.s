PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
MOV             R3, #0x10000
MOV             R2, #0
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x19E8
BL              sub_10A358
CMP             R0, #0
BEQ             locret_144B34
MOV             R1, R4
POP             {R4,LR}
B               sub_153BD0
POP             {R4,PC}
