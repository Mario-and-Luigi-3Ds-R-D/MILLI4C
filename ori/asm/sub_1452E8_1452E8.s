LDR             R0, =off_6CE970
PUSH            {R4,LR}
MOV             R3, #0x10000
MOV             R2, #0
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x20FA8
BL              sub_10A358
CMP             R0, #0
BEQ             locret_145318
POP             {R4,LR}
B               sub_1DF0F0
POP             {R4,PC}
