PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x12F80
BL              sub_10A358
CMP             R0, #0
BEQ             locret_1445EC
MOV             R1, R4
POP             {R4,LR}
B               sub_1FB96C
POP             {R4,PC}
