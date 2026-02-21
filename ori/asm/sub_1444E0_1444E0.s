PUSH            {R4,LR}
MOV             R4, R0
MOV             R1, #0
MOV             R0, #0x100
BL              sub_4802C8
CMP             R0, #0
LDR             R0, =off_6CE970
MOV             R3, #0x10000
MOV             R2, #0
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
BEQ             loc_14452C
MOV             R0, #0x1FC
BL              sub_10A358
CMP             R0, #0
BEQ             locret_14454C
MOV             R1, R4
POP             {R4,LR}
B               sub_317DAC
MOV             R0, #0x108
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             locret_14454C
MOV             R1, R4
POP             {R4,LR}
B               sub_31D978
POP             {R4,PC}
