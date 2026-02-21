PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0xA04
BL              sub_10A358
CMP             R0, #0
BEQ             locret_143A6C
MOV             R1, R4
POP             {R4,LR}
B               sub_3B3CE0
POP             {R4,PC}
